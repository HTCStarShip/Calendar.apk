.class public Lcom/htc/calendar/AlertService;
.super Landroid/app/Service;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/AlertService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final ACTIVE_ALERTS_SELECTION:Ljava/lang/String; = "(state=? OR state=?) AND alarmTime<="

.field private static final ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String; = null

.field private static final ACTIVE_ALERTS_SORT:Ljava/lang/String; = "begin DESC, end DESC"

.field private static final ALARM_BUFFER_TIME:I = 0xea60

.field private static final ALERT_INDEX_ALARM_TIME:I = 0x7

.field private static final ALERT_INDEX_ALERTS_RINGTONE:I = 0xe

.field private static final ALERT_INDEX_ALERTS_VIBRATE:I = 0xd

.field private static final ALERT_INDEX_ALL_DAY:I = 0x6

.field private static final ALERT_INDEX_BEGIN:I = 0x9

.field private static final ALERT_INDEX_END:I = 0xa

.field private static final ALERT_INDEX_EVENT_ID:I = 0x1

.field private static final ALERT_INDEX_EVENT_LOCATION:I = 0x4

.field private static final ALERT_INDEX_ID:I = 0x0

.field private static final ALERT_INDEX_MINUTES:I = 0x8

.field private static final ALERT_INDEX_REMINDER_DURATION:I = 0xc

.field private static final ALERT_INDEX_REMINDER_TYPE:I = 0xb

.field private static final ALERT_INDEX_SELF_ATTENDEE_STATUS:I = 0x5

.field private static final ALERT_INDEX_STATE:I = 0x2

.field private static final ALERT_INDEX_TITLE:I = 0x3

.field private static final ALERT_PROJECTION:[Ljava/lang/String; = null

.field public static final CALENDAR_NOTIFICATION_ID:I = 0x1

.field static final DEBUG:Z = false

.field private static EVENT_CANCEL_MEETING_TYPE_1:I = 0x0

.field private static EVENT_CANCEL_MEETING_TYPE_2:I = 0x0

.field private static EVENT_MEETING_TYPE_1:I = 0x0

.field private static EVENT_MEETING_TYPE_2:I = 0x0

.field private static EVENT_NOT_MEETING_TYPE:I = 0x0

.field public static final INTENT_ACTION_CALENDAR_REMINDER:Ljava/lang/String; = "com.htc.intent.action.calendar_reminder"

.field private static final NOTIFY_SOUND_TYPE_DEFAULT:I = 0x0

.field private static final NOTIFY_SOUND_TYPE_IN_CALL:I = 0x1

.field private static final NOTIFY_SOUND_TYPE_NO_SOUND_NO_VIABRATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AlertService"

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;


# instance fields
.field private volatile mServiceHandler:Lcom/htc/calendar/AlertService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "event_id"

    aput-object v1, v0, v4

    const-string v1, "state"

    aput-object v1, v0, v5

    const-string v1, "title"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const-string v1, "selfAttendeeStatus"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "alarmTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "minutes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "reminder_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "reminder_duration"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "alerts_vibrate"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "alerts_ringtone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/AlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    .line 122
    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/calendar/AlertService;->ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

    .line 128
    sput v3, Lcom/htc/calendar/AlertService;->EVENT_NOT_MEETING_TYPE:I

    .line 129
    sput v4, Lcom/htc/calendar/AlertService;->EVENT_MEETING_TYPE_1:I

    .line 130
    sput v6, Lcom/htc/calendar/AlertService;->EVENT_MEETING_TYPE_2:I

    .line 131
    sput v7, Lcom/htc/calendar/AlertService;->EVENT_CANCEL_MEETING_TYPE_1:I

    .line 132
    const/4 v0, 0x7

    sput v0, Lcom/htc/calendar/AlertService;->EVENT_CANCEL_MEETING_TYPE_2:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 521
    return-void
.end method

.method private static checkRingToneExist(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .parameter "context"
    .parameter "ringtoneUri"

    .prologue
    .line 879
    const/4 v4, 0x2

    invoke-static {p0, p1, v4}, Lcom/htc/wrap/android/media/HtcWrapRingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v2

    .line 882
    .local v2, rt:Landroid/media/Ringtone;
    const-string v4, "content://settings/system/notification_sound"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 884
    .local v0, defaultRingtoneURI:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 899
    .end local v0           #defaultRingtoneURI:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v0

    .line 888
    .restart local v0       #defaultRingtoneURI:Landroid/net/Uri;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 889
    .local v3, title:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 891
    const-string v4, "Default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    move-object v0, p1

    .line 899
    goto :goto_0

    .line 895
    .end local v3           #title:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 896
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static debug(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 935
    return-void
.end method

.method private static debugTimeLong(J)Ljava/lang/String;
    .locals 6
    .parameter "millis"

    .prologue
    .line 938
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 939
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 940
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%04d-%02d-%02d %02d:%02d:%02d"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Landroid/text/format/Time;->year:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, v0, Landroid/text/format/Time;->hour:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, v0, Landroid/text/format/Time;->minute:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, v0, Landroid/text/format/Time;->second:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static dismissEvent(Landroid/content/ContentResolver;J)V
    .locals 6
    .parameter "cr"
    .parameter "eventId"

    .prologue
    .line 170
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 171
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "state"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const/4 v1, -0x1

    .line 174
    .local v1, number:I
    :try_start_0
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 178
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VV#793, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dismiss event, id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/calendar/AlertService;->debug(Ljava/lang/String;)V

    .line 179
    return-void

    .line 175
    :catch_0
    move-exception v2

    .line 176
    .local v2, sde:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "AlertService"

    const-string v4, "Ignoring unexpected SQLiteDiskIOException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private doTimeChanged()V
    .locals 4

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/htc/calendar/AlertService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 515
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/htc/calendar/AlertService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .local v2, service:Ljava/lang/Object;
    move-object v1, v2

    .line 516
    check-cast v1, Landroid/app/AlarmManager;

    .line 517
    .local v1, manager:Landroid/app/AlarmManager;
    invoke-static {v0, p0, v1}, Landroid/provider/CalendarContract$CalendarAlerts;->rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 518
    invoke-static {p0}, Lcom/htc/calendar/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 519
    return-void
.end method

.method private static getRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    .line 903
    const/4 v6, 0x0

    .line 904
    .local v6, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 905
    .local v10, soundUri:Landroid/net/Uri;
    const-string v9, ""

    .line 906
    .local v9, soundString:Ljava/lang/String;
    const-string v3, "refType=\'Calendar\'"

    .line 908
    .local v3, selectionWithRefType:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.htc.sdm.provider.SDMProvider/setting"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 909
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    const-string v0, "soundUri"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 916
    :cond_0
    if-eqz v6, :cond_1

    .line 917
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 921
    :cond_1
    :goto_0
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 922
    const/4 v0, 0x5

    invoke-static {p0, v10, v0}, Lcom/htc/wrap/android/media/HtcWrapRingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v8

    .line 923
    .local v8, ringtone:Landroid/media/Ringtone;
    if-nez v8, :cond_3

    move-object v0, v11

    .line 926
    :goto_1
    return-object v0

    .line 912
    .end local v8           #ringtone:Landroid/media/Ringtone;
    :catch_0
    move-exception v7

    .line 913
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "AlertService"

    const-string v1, "getRingtoneUri exception"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 914
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 916
    if-eqz v6, :cond_1

    .line 917
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 916
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 917
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 926
    .restart local v8       #ringtone:Landroid/media/Ringtone;
    :cond_3
    invoke-static {v8}, Lcom/htc/wrap/android/media/HtcWrapRingtone;->getUri(Landroid/media/Ringtone;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method private static getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 872
    sget-object v0, Lcom/htc/calendar/AlertService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 873
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/htc/calendar/AlertService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 875
    :cond_0
    sget-object v0, Lcom/htc/calendar/AlertService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private static postNotification(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 11
    .parameter "context"
    .parameter "prefs"
    .parameter "eventName"
    .parameter "location"
    .parameter "numReminders"
    .parameter "quietUpdate"
    .parameter "highPriority"

    .prologue
    .line 452
    const-string v9, "notification"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 455
    .local v2, nm:Landroid/app/NotificationManager;
    if-nez p4, :cond_0

    .line 456
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 511
    :goto_0
    return-void

    .line 460
    :cond_0
    move/from16 v0, p6

    invoke-static {p0, p2, p3, p4, v0}, Lcom/htc/calendar/AlertReceiver;->makeNewAlertNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/htc/wrap/android/app/HtcWrapNotification;

    move-result-object v3

    .line 462
    .local v3, notification:Landroid/app/Notification;
    iget v9, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v3, Landroid/app/Notification;->defaults:I

    .line 465
    if-nez p5, :cond_4

    .line 467
    iput-object p2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 468
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 469
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 480
    :cond_1
    const-string v9, "preferences_alerts_vibrateWhen"

    invoke-interface {p1, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 483
    const-string v9, "preferences_alerts_vibrateWhen"

    const/4 v10, 0x0

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 490
    .local v8, vibrateWhen:Ljava/lang/String;
    :goto_1
    const-string v9, "always"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 491
    .local v6, vibrateAlways:Z
    const-string v9, "silent"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 492
    .local v7, vibrateSilent:Z
    const-string v9, "audio"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 494
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    const/4 v4, 0x1

    .line 498
    .local v4, nowSilent:Z
    :goto_2
    if-nez v6, :cond_2

    if-eqz v7, :cond_3

    if-eqz v4, :cond_3

    .line 499
    :cond_2
    iget v9, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v3, Landroid/app/Notification;->defaults:I

    .line 504
    :cond_3
    const-string v9, "preferences_alerts_ringtone"

    const/4 v10, 0x0

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 506
    .local v5, reminderRingtone:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    :goto_3
    iput-object v9, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 510
    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v4           #nowSilent:Z
    .end local v5           #reminderRingtone:Ljava/lang/String;
    .end local v6           #vibrateAlways:Z
    .end local v7           #vibrateSilent:Z
    .end local v8           #vibrateWhen:Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v2, v9, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 488
    :cond_5
    const v9, 0x7f0800cf

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #vibrateWhen:Ljava/lang/String;
    goto :goto_1

    .line 494
    .restart local v1       #audioManager:Landroid/media/AudioManager;
    .restart local v6       #vibrateAlways:Z
    .restart local v7       #vibrateSilent:Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 506
    .restart local v4       #nowSilent:Z
    .restart local v5       #reminderRingtone:Ljava/lang/String;
    :cond_7
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_3
.end method

.method private static postNotificationHTC(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;IZZJJJZLjava/lang/String;I)Z
    .locals 44
    .parameter "context"
    .parameter "prefs"
    .parameter "eventName"
    .parameter "location"
    .parameter "numReminders"
    .parameter "quietUpdate"
    .parameter "highPriority"
    .parameter "eventId"
    .parameter "begin"
    .parameter "end"
    .parameter "reminderVibrate"
    .parameter "reminderRingtone"
    .parameter "reminderType"

    .prologue
    .line 603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 606
    .local v16, currentTime:J
    cmp-long v4, p11, v16

    if-gez v4, :cond_0

    .line 607
    const-string v4, "VV#793, over endTime, no postNotificationHTC"

    invoke-static {v4}, Lcom/htc/calendar/AlertService;->debug(Ljava/lang/String;)V

    .line 608
    const/4 v14, 0x0

    .line 868
    :goto_0
    return v14

    .line 611
    :cond_0
    const-string v4, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/NotificationManager;

    .line 614
    .local v33, nm:Landroid/app/NotificationManager;
    if-nez p4, :cond_1

    .line 615
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 616
    const/4 v14, 0x0

    goto :goto_0

    .line 619
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/htc/calendar/AlertReceiver;->makeNewAlertNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/wrap/android/app/HtcWrapNotification;

    move-result-object v34

    .line 621
    .local v34, notification:Lcom/htc/wrap/android/app/HtcWrapNotification;
    move-object/from16 v0, v34

    iget v4, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x4

    move-object/from16 v0, v34

    iput v4, v0, Landroid/app/Notification;->defaults:I

    .line 623
    const-string v4, "AlertService"

    const-string v5, ">>>>>>> makeNewAlertNotification <<<<<<<"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string v4, "AlertService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>>>> eventId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p7

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " <<<<<<<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string v4, "AlertService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>>>> numReminders:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " <<<<<<<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const-string v5, "AlertService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>>>> quietUpdate:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p5, :cond_f

    const-string v4, " QUIET"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " <<<<<<<"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v4, "AlertService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>>>> reminderVibrate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p13

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " <<<<<<<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-string v4, "AlertService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>>>> ringtone:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p14

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " <<<<<<<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v4, "AlertService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>>>> reminderType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p15

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " <<<<<<<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    if-nez p5, :cond_5

    .line 635
    move-object/from16 v0, p2

    move-object/from16 v1, v34

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 636
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 637
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    iput-object v4, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 641
    :cond_2
    if-eqz p13, :cond_3

    .line 642
    move-object/from16 v0, v34

    iget v4, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v34

    iput v4, v0, Landroid/app/Notification;->defaults:I

    .line 644
    :cond_3
    const/4 v4, 0x5

    move-object/from16 v0, v34

    iput v4, v0, Lcom/htc/wrap/android/app/HtcWrapNotification;->audioStreamType:I

    .line 647
    invoke-static/range {p0 .. p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->getReminder(Landroid/content/Context;)Z

    move-result v29

    .line 650
    .local v29, isNeedFlashLight:Z
    invoke-static {}, Lcom/htc/calendar/Utils;->isSupportJogball()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 651
    if-eqz v29, :cond_4

    .line 652
    move-object/from16 v0, v34

    iget v4, v0, Lcom/htc/wrap/android/app/HtcWrapNotification;->flags:I

    const/high16 v5, 0x1

    or-int/2addr v4, v5

    move-object/from16 v0, v34

    iput v4, v0, Lcom/htc/wrap/android/app/HtcWrapNotification;->flags:I

    .line 653
    invoke-virtual/range {v34 .. v34}, Lcom/htc/wrap/android/app/HtcWrapNotification;->getJogMode()I

    move-result v4

    or-int/lit8 v4, v4, 0x7

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/htc/wrap/android/app/HtcWrapNotification;->setJogMode(I)V

    .line 667
    :cond_4
    :goto_2
    const/16 v36, 0x0

    .line 668
    .local v36, reminderRingtoneUri:Landroid/net/Uri;
    invoke-static/range {p14 .. p14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 669
    const-string v4, "content://settings/system/cal_notification"

    move-object/from16 v0, p14

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 670
    const/16 v36, 0x0

    .line 682
    :goto_3
    if-eqz v36, :cond_13

    .line 683
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/htc/calendar/AlertService;->checkRingToneExist(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v34

    iput-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 690
    .end local v29           #isNeedFlashLight:Z
    .end local v36           #reminderRingtoneUri:Landroid/net/Uri;
    :cond_5
    :goto_4
    const-string v4, "keyguard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/app/KeyguardManager;

    .line 691
    .local v30, km:Landroid/app/KeyguardManager;
    invoke-virtual/range {v30 .. v30}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v28

    .line 692
    .local v28, isLockScreenExist:Z
    const/16 v27, 0x0

    .line 695
    .local v27, isCanShowLockScreen:Z
    const/4 v15, 0x0

    .line 697
    .local v15, changeNotificationSound:I
    invoke-static/range {p0 .. p0}, Lcom/htc/calendar/AlertService;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v39

    .line 698
    .local v39, telphonyManager:Landroid/telephony/TelephonyManager;
    if-nez v39, :cond_14

    .line 699
    const/4 v15, 0x1

    .line 715
    :cond_6
    :goto_5
    invoke-static/range {p15 .. p15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v41

    .line 718
    .local v41, type:Ljava/lang/String;
    const/4 v4, 0x1

    if-ne v15, v4, :cond_19

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v4, :cond_19

    const-string v4, "2"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 721
    new-instance v37, Landroid/media/RingtoneManager;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 722
    .local v37, ringtoneManager:Landroid/media/RingtoneManager;
    const/4 v4, 0x2

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/media/RingtoneManager;->setType(I)V

    .line 723
    invoke-virtual/range {v37 .. v37}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v18

    .line 725
    .local v18, cursor:Landroid/database/Cursor;
    if-eqz v18, :cond_18

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 726
    const/16 v21, 0x0

    .line 727
    .local v21, found:Z
    const/16 v32, 0x0

    .line 729
    .local v32, newRingToneUri:Landroid/net/Uri;
    :cond_7
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 730
    .local v40, title:Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 731
    .local v38, strUri:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 732
    .local v22, id:J
    const-string v4, "AlertService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "title: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const-string v4, "Simple Low"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 734
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    .line 735
    move-object/from16 v0, v32

    move-object/from16 v1, v34

    iput-object v0, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 736
    const/16 v21, 0x1

    .line 741
    :goto_6
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_8

    .line 742
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 744
    :cond_8
    if-nez v21, :cond_17

    .line 745
    const-string v4, "AlertService"

    const-string v5, "Can\'t find Simple High ringtone"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .end local v21           #found:Z
    .end local v22           #id:J
    .end local v32           #newRingToneUri:Landroid/net/Uri;
    .end local v38           #strUri:Ljava/lang/String;
    .end local v40           #title:Ljava/lang/String;
    :goto_7
    new-instance v24, Lcom/htc/calendar/InCallTonePlayer;

    const/16 v4, 0x1c

    const/16 v5, 0x46

    const/4 v6, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/htc/calendar/InCallTonePlayer;-><init>(Landroid/content/Context;IIZ)V

    .line 754
    .local v24, inCallRingTonePlayer:Lcom/htc/calendar/InCallTonePlayer;
    invoke-virtual/range {v24 .. v24}, Lcom/htc/calendar/InCallTonePlayer;->start()V

    .line 763
    .end local v18           #cursor:Landroid/database/Cursor;
    .end local v24           #inCallRingTonePlayer:Lcom/htc/calendar/InCallTonePlayer;
    .end local v37           #ringtoneManager:Landroid/media/RingtoneManager;
    :cond_9
    :goto_8
    const-string v4, "AlertService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeNotificationSound: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const-string v4, "AlertService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notification.sound != null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    iget-object v6, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const-string v4, "AlertService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reminderType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p15

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v14, 0x0

    .line 767
    .local v14, bShowAlert:Z
    const-string v4, "0"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 768
    if-nez p5, :cond_a

    move-object/from16 v4, p0

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    move-wide/from16 v9, p11

    .line 770
    invoke-static/range {v4 .. v10}, Lcom/htc/calendar/HtcUtils;->setRemoveIconAlarmTime(Landroid/content/Context;JJJ)V

    .line 773
    :cond_a
    if-eqz v28, :cond_b

    if-eqz v27, :cond_b

    .line 774
    const/4 v14, 0x0

    .line 776
    const-string v12, "event_id"

    .line 777
    .local v12, EVENT_ID:Ljava/lang/String;
    const-string v11, "event_description"

    .line 778
    .local v11, EVENT_DESCRIPTION:Ljava/lang/String;
    const-string v13, "event_where"

    .line 780
    .local v13, EVENT_WHERE:Ljava/lang/String;
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p7

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v42

    .line 781
    .local v42, uri:Landroid/net/Uri;
    new-instance v26, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 782
    .local v26, intentDetailsView:Landroid/content/Intent;
    const-string v4, "beginTime"

    move-object/from16 v0, v26

    move-wide/from16 v1, p9

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 783
    const-string v4, "endTime"

    move-object/from16 v0, v26

    move-wide/from16 v1, p11

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 784
    const-string v4, "need_show_snooze_dismiss"

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 785
    const/high16 v4, 0x1400

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 790
    const-wide/32 v4, 0xea60

    add-long v4, v4, p9

    cmp-long v4, v16, v4

    if-gtz v4, :cond_b

    .line 794
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 797
    new-instance v25, Landroid/content/Intent;

    const-string v4, "com.htc.intent.action.calendar_reminder"

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 798
    .local v25, intent:Landroid/content/Intent;
    const-string v4, "event_id"

    move-object/from16 v0, v25

    move-wide/from16 v1, p7

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 799
    const-string v4, "event_description"

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    const-string v4, "event_where"

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    const-string v4, "beginTime"

    move-object/from16 v0, v25

    move-wide/from16 v1, p9

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 802
    const-string v4, "endTime"

    move-object/from16 v0, v25

    move-wide/from16 v1, p11

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 803
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    .end local v11           #EVENT_DESCRIPTION:Ljava/lang/String;
    .end local v12           #EVENT_ID:Ljava/lang/String;
    .end local v13           #EVENT_WHERE:Ljava/lang/String;
    .end local v25           #intent:Landroid/content/Intent;
    .end local v26           #intentDetailsView:Landroid/content/Intent;
    .end local v42           #uri:Landroid/net/Uri;
    :cond_b
    :goto_9
    const/16 v20, 0x0

    .line 824
    .local v20, eventCursor:Landroid/database/Cursor;
    const/16 v35, 0x0

    .line 827
    .local v35, reminderCursor:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "MeetingStatus"

    aput-object v8, v6, v7

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 829
    const/16 v31, 0x0

    .line 830
    .local v31, minutes:I
    if-eqz v20, :cond_c

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 831
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    sget v5, Lcom/htc/calendar/AlertService;->EVENT_CANCEL_MEETING_TYPE_1:I

    if-eq v4, v5, :cond_1a

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    sget v5, Lcom/htc/calendar/AlertService;->EVENT_CANCEL_MEETING_TYPE_2:I

    if-eq v4, v5, :cond_1a

    .line 833
    const/4 v4, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 855
    :cond_c
    :goto_a
    if-eqz v20, :cond_d

    .line 856
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_d

    .line 857
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 861
    :cond_d
    if-eqz v35, :cond_e

    .line 862
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_e

    .line 863
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    .line 867
    .end local v31           #minutes:I
    :cond_e
    :goto_b
    const-string v4, "AlertService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Show Alert:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 627
    .end local v14           #bShowAlert:Z
    .end local v15           #changeNotificationSound:I
    .end local v20           #eventCursor:Landroid/database/Cursor;
    .end local v27           #isCanShowLockScreen:Z
    .end local v28           #isLockScreenExist:Z
    .end local v30           #km:Landroid/app/KeyguardManager;
    .end local v35           #reminderCursor:Landroid/database/Cursor;
    .end local v39           #telphonyManager:Landroid/telephony/TelephonyManager;
    .end local v41           #type:Ljava/lang/String;
    :cond_f
    const-string v4, " loud"

    goto/16 :goto_1

    .line 656
    .restart local v29       #isNeedFlashLight:Z
    :cond_10
    if-eqz v29, :cond_4

    .line 657
    move-object/from16 v0, v34

    iget v4, v0, Lcom/htc/wrap/android/app/HtcWrapNotification;->flags:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v34

    iput v4, v0, Lcom/htc/wrap/android/app/HtcWrapNotification;->flags:I

    .line 658
    const v4, -0xff0100

    move-object/from16 v0, v34

    iput v4, v0, Lcom/htc/wrap/android/app/HtcWrapNotification;->ledARGB:I

    .line 659
    const/16 v4, 0x1f4

    move-object/from16 v0, v34

    iput v4, v0, Lcom/htc/wrap/android/app/HtcWrapNotification;->ledOnMS:I

    .line 660
    const/16 v4, 0x7d0

    move-object/from16 v0, v34

    iput v4, v0, Lcom/htc/wrap/android/app/HtcWrapNotification;->ledOffMS:I

    goto/16 :goto_2

    .line 672
    .restart local v36       #reminderRingtoneUri:Landroid/net/Uri;
    :cond_11
    invoke-static/range {p14 .. p14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v36

    goto/16 :goto_3

    .line 678
    :cond_12
    const/16 v36, 0x0

    goto/16 :goto_3

    .line 685
    :cond_13
    invoke-static/range {p0 .. p0}, Lcom/htc/calendar/AlertService;->getRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v34

    iput-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto/16 :goto_4

    .line 700
    .end local v29           #isNeedFlashLight:Z
    .end local v36           #reminderRingtoneUri:Landroid/net/Uri;
    .restart local v15       #changeNotificationSound:I
    .restart local v27       #isCanShowLockScreen:Z
    .restart local v28       #isLockScreenExist:Z
    .restart local v30       #km:Landroid/app/KeyguardManager;
    .restart local v39       #telphonyManager:Landroid/telephony/TelephonyManager;
    :cond_14
    invoke-virtual/range {v39 .. v39}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_15

    .line 701
    const/4 v15, 0x1

    goto/16 :goto_5

    .line 704
    :cond_15
    const/16 v27, 0x1

    .line 709
    const-wide/32 v4, 0xea60

    add-long v4, v4, p9

    cmp-long v4, v16, v4

    if-lez v4, :cond_6

    .line 710
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VV#793, over beginTime, no sound and vibrate, event id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p7

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", begin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p9

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/calendar/AlertService;->debug(Ljava/lang/String;)V

    .line 711
    const/4 v15, 0x2

    goto/16 :goto_5

    .line 739
    .restart local v18       #cursor:Landroid/database/Cursor;
    .restart local v21       #found:Z
    .restart local v22       #id:J
    .restart local v32       #newRingToneUri:Landroid/net/Uri;
    .restart local v37       #ringtoneManager:Landroid/media/RingtoneManager;
    .restart local v38       #strUri:Ljava/lang/String;
    .restart local v40       #title:Ljava/lang/String;
    .restart local v41       #type:Ljava/lang/String;
    :cond_16
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_6

    .line 747
    :cond_17
    const-string v4, "AlertService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In-Call now, change ringtone to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 750
    .end local v21           #found:Z
    .end local v22           #id:J
    .end local v32           #newRingToneUri:Landroid/net/Uri;
    .end local v38           #strUri:Ljava/lang/String;
    .end local v40           #title:Ljava/lang/String;
    :cond_18
    const-string v4, "AlertService"

    const-string v5, "Can\'t get cursor from RingtoneManager"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 756
    .end local v18           #cursor:Landroid/database/Cursor;
    .end local v37           #ringtoneManager:Landroid/media/RingtoneManager;
    :cond_19
    const/4 v4, 0x2

    if-ne v15, v4, :cond_9

    .line 758
    const/4 v4, 0x0

    move-object/from16 v0, v34

    iput-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 759
    const/4 v4, 0x0

    move-object/from16 v0, v34

    iput-object v4, v0, Lcom/htc/wrap/android/app/HtcWrapNotification;->vibrate:[J

    .line 760
    move-object/from16 v0, v34

    iget v4, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, -0x3

    move-object/from16 v0, v34

    iput v4, v0, Landroid/app/Notification;->defaults:I

    goto/16 :goto_8

    .line 804
    .restart local v11       #EVENT_DESCRIPTION:Ljava/lang/String;
    .restart local v12       #EVENT_ID:Ljava/lang/String;
    .restart local v13       #EVENT_WHERE:Ljava/lang/String;
    .restart local v14       #bShowAlert:Z
    .restart local v26       #intentDetailsView:Landroid/content/Intent;
    .restart local v42       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v19

    .line 805
    .local v19, e:Ljava/lang/Exception;
    const-string v4, "AlertService"

    const-string v5, "startActivity with detail view error!"

    move-object/from16 v0, v19

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 835
    .end local v11           #EVENT_DESCRIPTION:Ljava/lang/String;
    .end local v12           #EVENT_ID:Ljava/lang/String;
    .end local v13           #EVENT_WHERE:Ljava/lang/String;
    .end local v19           #e:Ljava/lang/Exception;
    .end local v26           #intentDetailsView:Landroid/content/Intent;
    .end local v42           #uri:Landroid/net/Uri;
    .restart local v20       #eventCursor:Landroid/database/Cursor;
    .restart local v31       #minutes:I
    .restart local v35       #reminderCursor:Landroid/database/Cursor;
    :cond_1a
    const/4 v14, 0x0

    .line 836
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "minutes"

    aput-object v8, v6, v7

    const-string v7, "event_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 838
    if-eqz v35, :cond_c

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 839
    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 840
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "event_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 842
    new-instance v43, Landroid/content/ContentValues;

    invoke-direct/range {v43 .. v43}, Landroid/content/ContentValues;-><init>()V

    .line 843
    .local v43, values:Landroid/content/ContentValues;
    const-string v4, "event_id"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 844
    const-string v4, "minutes"

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 845
    const-string v4, "method"

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 846
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v43

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_a

    .line 851
    .end local v31           #minutes:I
    .end local v43           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v19

    .line 852
    .restart local v19       #e:Ljava/lang/Exception;
    :try_start_3
    const-string v4, "AlertService"

    const-string v5, "startActivity with detail view error!"

    move-object/from16 v0, v19

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 855
    if-eqz v20, :cond_1b

    .line 856
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 857
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 861
    :cond_1b
    if-eqz v35, :cond_e

    .line 862
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_e

    .line 863
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    goto/16 :goto_b

    .line 855
    .end local v19           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v20, :cond_1c

    .line 856
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 857
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 861
    :cond_1c
    if-eqz v35, :cond_1d

    .line 862
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 863
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    :cond_1d
    throw v4
.end method

.method static updateAlertNotification(Landroid/content/Context;)Z
    .locals 60
    .parameter "context"

    .prologue
    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 184
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 186
    .local v30, currentTime:J
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/calendar/AlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "(state=? OR state=?) AND alarmTime<="

    move-object/from16 v0, v57

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v30

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/htc/calendar/AlertService;->ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

    const-string v7, "begin DESC, end DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 190
    .local v21, alertCursor:Landroid/database/Cursor;
    if-eqz v21, :cond_0

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 191
    :cond_0
    if-eqz v21, :cond_1

    .line 192
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 193
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_1
    const-string v3, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/app/NotificationManager;

    .line 200
    .local v44, nm:Landroid/app/NotificationManager;
    const/4 v3, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 201
    const/4 v3, 0x0

    .line 438
    .end local v44           #nm:Landroid/app/NotificationManager;
    :goto_0
    return v3

    .line 208
    :cond_2
    const/4 v5, 0x0

    .line 209
    .local v5, notificationEventName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 210
    .local v6, notificationEventLocation:Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 211
    .local v12, notificationEventBegin:J
    const/16 v45, 0x0

    .line 214
    .local v45, notificationEventStatus:I
    const-wide/16 v10, 0x0

    .line 215
    .local v10, notificationEventId:J
    const-wide/16 v14, 0x0

    .line 216
    .local v14, notificationEventEnd:J
    const/16 v16, 0x0

    .line 217
    .local v16, notificationVibrate:Z
    const-string v17, ""

    .line 218
    .local v17, notificationRingtone:Ljava/lang/String;
    const/16 v18, 0x0

    .line 220
    .local v18, notificationType:I
    const/16 v27, 0x0

    .line 221
    .local v27, bGetSettings:Z
    const-string v55, ""

    .line 222
    .local v55, strGetReminderType:Ljava/lang/String;
    const-string v54, ""

    .line 225
    .local v54, strGetReminderRingtone:Ljava/lang/String;
    new-instance v38, Ljava/util/HashMap;

    invoke-direct/range {v38 .. v38}, Ljava/util/HashMap;-><init>()V

    .line 226
    .local v38, eventIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v7, 0x0

    .line 227
    .local v7, numReminders:I
    const/16 v46, 0x0

    .line 229
    .local v46, numFired:I
    :cond_3
    :goto_1
    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 230
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 231
    .local v22, alertId:J
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 232
    .local v36, eventId:J
    const/16 v3, 0x8

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    .line 233
    .local v41, minutes:I
    const/4 v3, 0x3

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 234
    .local v39, eventName:Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 235
    .local v40, location:Ljava/lang/String;
    const/4 v3, 0x6

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_a

    const/16 v26, 0x1

    .line 236
    .local v26, allDay:Z
    :goto_2
    const/4 v3, 0x5

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v53

    .line 237
    .local v53, status:I
    const/4 v3, 0x2

    move/from16 v0, v53

    if-ne v0, v3, :cond_b

    const/16 v32, 0x1

    .line 238
    .local v32, declined:Z
    :goto_3
    const/16 v3, 0x9

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 239
    .local v28, beginTime:J
    const/16 v3, 0xa

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 240
    .local v34, endTime:J
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v22

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    .line 242
    .local v25, alertUri:Landroid/net/Uri;
    const/4 v3, 0x7

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 243
    .local v19, alarmTime:J
    const/4 v3, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    .line 246
    .local v52, state:I
    const/16 v3, 0xd

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_c

    const/16 v50, 0x1

    .line 247
    .local v50, reminderVibrate:Z
    :goto_4
    const/16 v3, 0xb

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    .line 248
    .local v49, reminderType:I
    const/16 v3, 0xe

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 259
    .local v48, reminderRingtone:Ljava/lang/String;
    new-instance v56, Landroid/content/ContentValues;

    invoke-direct/range {v56 .. v56}, Landroid/content/ContentValues;-><init>()V

    .line 260
    .local v56, values:Landroid/content/ContentValues;
    const/16 v42, -0x1

    .line 270
    .local v42, newState:I
    if-nez v32, :cond_d

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_d

    .line 271
    add-int/lit8 v7, v7, 0x1

    .line 272
    if-nez v52, :cond_4

    .line 273
    const/16 v42, 0x1

    .line 274
    add-int/lit8 v46, v46, 0x1

    .line 279
    const-string v3, "receivedTime"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 290
    :cond_4
    :goto_5
    cmp-long v3, v34, v30

    if-gez v3, :cond_e

    .line 291
    const/16 v42, 0x2

    .line 292
    move-wide/from16 v0, v36

    invoke-static {v2, v0, v1}, Lcom/htc/calendar/AlertService;->dismissEvent(Landroid/content/ContentResolver;J)V

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VV#793, over endTime set DISMISSED, id:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v36

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/calendar/AlertService;->debug(Ljava/lang/String;)V

    .line 299
    :goto_6
    cmp-long v3, v19, v28

    if-lez v3, :cond_5

    .line 300
    const/16 v42, 0x2

    .line 301
    move-wide/from16 v0, v36

    invoke-static {v2, v0, v1}, Lcom/htc/calendar/AlertService;->dismissEvent(Landroid/content/ContentResolver;J)V

    .line 303
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "eventId: %d, alarmTime(%s) > beginTime(%s)"

    const/16 v57, 0x3

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v59

    aput-object v59, v57, v58

    const/16 v58, 0x1

    invoke-static/range {v19 .. v20}, Lcom/htc/calendar/AlertService;->debugTimeLong(J)Ljava/lang/String;

    move-result-object v59

    aput-object v59, v57, v58

    const/16 v58, 0x2

    invoke-static/range {v28 .. v29}, Lcom/htc/calendar/AlertService;->debugTimeLong(J)Ljava/lang/String;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v57

    invoke-static {v3, v8, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/calendar/AlertService;->debug(Ljava/lang/String;)V

    .line 311
    :cond_5
    const/4 v3, -0x1

    move/from16 v0, v42

    if-eq v0, v3, :cond_6

    .line 312
    const-string v3, "state"

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    move/from16 v52, v42

    .line 316
    :cond_6
    const/4 v3, 0x1

    move/from16 v0, v52

    if-ne v0, v3, :cond_7

    .line 319
    const-string v3, "notifyTime"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 323
    :cond_7
    invoke-virtual/range {v56 .. v56}, Landroid/content/ContentValues;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_8

    .line 325
    const/4 v3, 0x0

    const/4 v8, 0x0

    :try_start_1
    move-object/from16 v0, v25

    move-object/from16 v1, v56

    invoke-virtual {v2, v0, v1, v3, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 332
    :cond_8
    :goto_7
    const/4 v3, 0x1

    move/from16 v0, v52

    if-ne v0, v3, :cond_3

    .line 339
    packed-switch v53, :pswitch_data_0

    .line 347
    :pswitch_0
    const/16 v43, 0x0

    .line 352
    .local v43, newStatus:I
    :goto_8
    if-eqz v5, :cond_9

    cmp-long v3, v12, v28

    if-gtz v3, :cond_3

    move/from16 v0, v45

    move/from16 v1, v43

    if-ge v0, v1, :cond_3

    .line 355
    :cond_9
    move-object/from16 v5, v39

    .line 356
    move-object/from16 v6, v40

    .line 357
    move-wide/from16 v12, v28

    .line 358
    move/from16 v45, v43

    .line 360
    move-wide/from16 v10, v36

    .line 361
    move-wide/from16 v14, v34

    .line 362
    move/from16 v16, v50

    .line 363
    :try_start_2
    const-string v3, "AlertService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "updateAlertNotification notificationEventId: "

    move-object/from16 v0, v57

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v57, " reminderRingtone: "

    move-object/from16 v0, v57

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v48

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static/range {v48 .. v48}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 365
    move-object/from16 v17, v48

    .line 369
    :goto_9
    move/from16 v18, v49

    goto/16 :goto_1

    .line 235
    .end local v19           #alarmTime:J
    .end local v25           #alertUri:Landroid/net/Uri;
    .end local v26           #allDay:Z
    .end local v28           #beginTime:J
    .end local v32           #declined:Z
    .end local v34           #endTime:J
    .end local v42           #newState:I
    .end local v43           #newStatus:I
    .end local v48           #reminderRingtone:Ljava/lang/String;
    .end local v49           #reminderType:I
    .end local v50           #reminderVibrate:Z
    .end local v52           #state:I
    .end local v53           #status:I
    .end local v56           #values:Landroid/content/ContentValues;
    :cond_a
    const/16 v26, 0x0

    goto/16 :goto_2

    .line 237
    .restart local v26       #allDay:Z
    .restart local v53       #status:I
    :cond_b
    const/16 v32, 0x0

    goto/16 :goto_3

    .line 246
    .restart local v19       #alarmTime:J
    .restart local v25       #alertUri:Landroid/net/Uri;
    .restart local v28       #beginTime:J
    .restart local v32       #declined:Z
    .restart local v34       #endTime:J
    .restart local v52       #state:I
    :cond_c
    const/16 v50, 0x0

    goto/16 :goto_4

    .line 282
    .restart local v42       #newState:I
    .restart local v48       #reminderRingtone:Ljava/lang/String;
    .restart local v49       #reminderType:I
    .restart local v50       #reminderVibrate:Z
    .restart local v56       #values:Landroid/content/ContentValues;
    :cond_d
    const/16 v42, 0x2

    goto/16 :goto_5

    .line 295
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VV#793, endTime - currentTime = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v57, v34, v30

    move-wide/from16 v0, v57

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/calendar/AlertService;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_6

    .line 375
    .end local v19           #alarmTime:J
    .end local v22           #alertId:J
    .end local v25           #alertUri:Landroid/net/Uri;
    .end local v26           #allDay:Z
    .end local v28           #beginTime:J
    .end local v32           #declined:Z
    .end local v34           #endTime:J
    .end local v36           #eventId:J
    .end local v39           #eventName:Ljava/lang/String;
    .end local v40           #location:Ljava/lang/String;
    .end local v41           #minutes:I
    .end local v42           #newState:I
    .end local v48           #reminderRingtone:Ljava/lang/String;
    .end local v49           #reminderType:I
    .end local v50           #reminderVibrate:Z
    .end local v52           #state:I
    .end local v53           #status:I
    .end local v56           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    if-eqz v21, :cond_f

    .line 376
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_f

    .line 377
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v3

    .line 326
    .restart local v19       #alarmTime:J
    .restart local v22       #alertId:J
    .restart local v25       #alertUri:Landroid/net/Uri;
    .restart local v26       #allDay:Z
    .restart local v28       #beginTime:J
    .restart local v32       #declined:Z
    .restart local v34       #endTime:J
    .restart local v36       #eventId:J
    .restart local v39       #eventName:Ljava/lang/String;
    .restart local v40       #location:Ljava/lang/String;
    .restart local v41       #minutes:I
    .restart local v42       #newState:I
    .restart local v48       #reminderRingtone:Ljava/lang/String;
    .restart local v49       #reminderType:I
    .restart local v50       #reminderVibrate:Z
    .restart local v52       #state:I
    .restart local v53       #status:I
    .restart local v56       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v33

    .line 327
    .local v33, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "AlertService"

    const-string v8, "update fail"

    move-object/from16 v0, v33

    invoke-static {v3, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 341
    .end local v33           #e:Ljava/lang/Exception;
    :pswitch_1
    const/16 v43, 0x2

    .line 342
    .restart local v43       #newStatus:I
    goto/16 :goto_8

    .line 344
    .end local v43           #newStatus:I
    :pswitch_2
    const/16 v43, 0x1

    .line 345
    .restart local v43       #newStatus:I
    goto/16 :goto_8

    .line 367
    :cond_10
    const-string v17, "content://settings/system/cal_notification"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_9

    .line 375
    .end local v19           #alarmTime:J
    .end local v22           #alertId:J
    .end local v25           #alertUri:Landroid/net/Uri;
    .end local v26           #allDay:Z
    .end local v28           #beginTime:J
    .end local v32           #declined:Z
    .end local v34           #endTime:J
    .end local v36           #eventId:J
    .end local v39           #eventName:Ljava/lang/String;
    .end local v40           #location:Ljava/lang/String;
    .end local v41           #minutes:I
    .end local v42           #newState:I
    .end local v43           #newStatus:I
    .end local v48           #reminderRingtone:Ljava/lang/String;
    .end local v49           #reminderType:I
    .end local v50           #reminderVibrate:Z
    .end local v52           #state:I
    .end local v53           #status:I
    .end local v56           #values:Landroid/content/ContentValues;
    :cond_11
    if-eqz v21, :cond_12

    .line 376
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_12

    .line 377
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 382
    :cond_12
    invoke-static/range {p0 .. p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 383
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_alerts_type"

    const-string v8, "1"

    invoke-interface {v4, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 393
    .local v49, reminderType:Ljava/lang/String;
    const-string v3, "2"

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 397
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 401
    :cond_13
    if-nez v46, :cond_15

    const/16 v47, 0x1

    .line 402
    .local v47, quietUpdate:Z
    :goto_a
    if-lez v46, :cond_16

    const-string v3, "0"

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v9, 0x1

    .line 413
    .local v9, highPriority:Z
    :goto_b
    const/16 v51, 0x0

    .line 414
    .local v51, showAlert:Z
    if-nez v46, :cond_17

    const/4 v8, 0x1

    :goto_c
    move-object/from16 v3, p0

    invoke-static/range {v3 .. v18}, Lcom/htc/calendar/AlertService;->postNotificationHTC(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;IZZJJJZLjava/lang/String;I)Z

    move-result v51

    .line 430
    if-lez v46, :cond_14

    const-string v3, "0"

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    if-eqz v51, :cond_14

    .line 432
    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    .line 433
    .local v24, alertIntent:Landroid/content/Intent;
    const-class v3, Lcom/htc/calendar/AlertActivity;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 434
    const/high16 v3, 0x1000

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 435
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 438
    .end local v24           #alertIntent:Landroid/content/Intent;
    :cond_14
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 401
    .end local v9           #highPriority:Z
    .end local v47           #quietUpdate:Z
    .end local v51           #showAlert:Z
    :cond_15
    const/16 v47, 0x0

    goto :goto_a

    .line 402
    .restart local v47       #quietUpdate:Z
    :cond_16
    const/4 v9, 0x0

    goto :goto_b

    .line 414
    .restart local v9       #highPriority:Z
    .restart local v51       #showAlert:Z
    :cond_17
    const/4 v8, 0x0

    goto :goto_c

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 567
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 537
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlertService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 539
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 541
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/calendar/AlertService;->mServiceLooper:Landroid/os/Looper;

    .line 542
    new-instance v1, Lcom/htc/calendar/AlertService$ServiceHandler;

    iget-object v2, p0, Lcom/htc/calendar/AlertService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/htc/calendar/AlertService$ServiceHandler;-><init>(Lcom/htc/calendar/AlertService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/calendar/AlertService;->mServiceHandler:Lcom/htc/calendar/AlertService$ServiceHandler;

    .line 545
    invoke-static {p0}, Lcom/htc/calendar/AlertService;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    sput-object v1, Lcom/htc/calendar/AlertService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 547
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/htc/calendar/AlertService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 563
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 551
    if-eqz p1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/htc/calendar/AlertService;->mServiceHandler:Lcom/htc/calendar/AlertService$ServiceHandler;

    invoke-virtual {v1}, Lcom/htc/calendar/AlertService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 553
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 554
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 555
    iget-object v1, p0, Lcom/htc/calendar/AlertService;->mServiceHandler:Lcom/htc/calendar/AlertService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/htc/calendar/AlertService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 557
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x3

    return v1
.end method

.method processMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 137
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 141
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "action"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/htc/calendar/AlertService;->doTimeChanged()V

    .line 166
    :goto_0
    return-void

    .line 153
    :cond_1
    const-string v3, "android.intent.action.EVENT_REMINDER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 155
    const-string v3, "AlertService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.omadm.action.APPOINTMENT_REMINDER_ON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/htc/calendar/AlertService;->sendBroadcast(Landroid/content/Intent;)V

    .line 163
    const-string v3, "AlertService"

    const-string v4, "send to OMADM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {p0}, Lcom/htc/calendar/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    goto :goto_0
.end method
