.class public Lcom/htc/calendar/HtcUtils;
.super Ljava/lang/Object;
.source "HtcUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/HtcUtils$SnoozeThread;
    }
.end annotation


# static fields
.field public static final ACCOUNT_NAME_HOTMAIL:Ljava/lang/String; = "Hotmail"

.field public static final ARABIC_DATE:[I = null

.field public static final ARABIC_ORDER:[I = null

.field private static final DAY_EVENTS_LIST:I = 0x3

.field private static final EVENT_ID:Ljava/lang/String; = "event_id"

.field private static final EVENT_WITH_EXTRA:I = 0x5

.field private static final EVENT_WITH_TIME:I = 0x1

.field private static final HANDLE_TYPE:Ljava/lang/String; = "handle_type"

.field private static final HANDLE_TYPE_DISMISS:I = 0x2

.field private static final HANDLE_TYPE_SNOOZE:I = 0x1

.field private static final HANDLE_WAY:Ljava/lang/String; = "handle_way"

.field private static final HANDLE_WAY_EVENT_EXPIRE:I = 0x2

.field private static final HANDLE_WAY_SPEAK:I = 0x1

.field private static final HTC_LOCKSCREEN_RECEIVER_INTENT:Ljava/lang/String; = "com.htc.intent.lockscreen.ClearCalendarReminder"

.field public static final HTC_REMOVE_EVENT_ICON_ALARM:Ljava/lang/String; = "htc_remove_event_icon_alarm"

.field private static final INTENT_ACTION_CALENDAR_REMINDER_HANDLED:Ljava/lang/String; = "com.htc.intent.action.calendar_reminder_handled"

.field private static final TAG:Ljava/lang/String; = "HtcUtils"

.field private static final THE_EVENT_WITH_GUID_TYPE:I = 0x4

.field private static final UNI_EVENT_WITH_TIME:I = 0x2

.field private static isBTModuleExist:I

.field private static isEvCardExist:I

.field private static isFacebookAccountTypeChecked:I

.field private static isHtcLinkifyDispatcher:I

.field private static isNoteModuleExist:I

.field private static isShowMeModuleExist:I

.field private static isTaskEventChecked:I

.field private static isTestPrinterModuleExist:I

.field private static final localeString:[Ljava/lang/String;

.field private static mLocationPickerVersion:Ljava/lang/Double;

.field private static mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private static final m_strLaputaEntryActions:[Ljava/lang/String;

.field private static mailExistId:J

.field public static myPendingList:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private static nIsMmsExist:I

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/htc/calendar/HtcUtils;->myPendingList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 482
    sput v4, Lcom/htc/calendar/HtcUtils;->isTestPrinterModuleExist:I

    .line 510
    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v5}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/calendar/HtcUtils;->sUriMatcher:Landroid/content/UriMatcher;

    .line 512
    sget-object v0, Lcom/htc/calendar/HtcUtils;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "events/#/EventTime/#/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 513
    sget-object v0, Lcom/htc/calendar/HtcUtils;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "uni-event/#/EventTime/#/#"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 514
    sget-object v0, Lcom/htc/calendar/HtcUtils;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "the-event"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 516
    sget-object v0, Lcom/htc/calendar/HtcUtils;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "day-events-list/#"

    invoke-virtual {v0, v1, v2, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 520
    sget-object v0, Lcom/htc/calendar/HtcUtils;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "events/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 581
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "com.htc.laputa.navipanel.action.VIEW"

    aput-object v1, v0, v4

    const-string v1, "com.htc.laputa.lb.action.BROWSER_FROM_INSTALLER"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/calendar/HtcUtils;->m_strLaputaEntryActions:[Ljava/lang/String;

    .line 621
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/htc/calendar/HtcUtils;->mLocationPickerVersion:Ljava/lang/Double;

    .line 673
    sput v5, Lcom/htc/calendar/HtcUtils;->isEvCardExist:I

    .line 724
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "es"

    aput-object v1, v0, v4

    const-string v1, "vi"

    aput-object v1, v0, v6

    const-string v1, "da"

    aput-object v1, v0, v7

    const-string v1, "nb"

    aput-object v1, v0, v8

    const/4 v1, 0x4

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ar"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/HtcUtils;->localeString:[Ljava/lang/String;

    .line 740
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/calendar/HtcUtils;->ARABIC_ORDER:[I

    .line 750
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/calendar/HtcUtils;->ARABIC_DATE:[I

    .line 788
    sput v4, Lcom/htc/calendar/HtcUtils;->isShowMeModuleExist:I

    .line 810
    sput v4, Lcom/htc/calendar/HtcUtils;->isNoteModuleExist:I

    .line 872
    sput v5, Lcom/htc/calendar/HtcUtils;->nIsMmsExist:I

    .line 897
    sput v4, Lcom/htc/calendar/HtcUtils;->isBTModuleExist:I

    .line 920
    sput v4, Lcom/htc/calendar/HtcUtils;->isHtcLinkifyDispatcher:I

    .line 935
    sput v5, Lcom/htc/calendar/HtcUtils;->isTaskEventChecked:I

    .line 956
    sput v5, Lcom/htc/calendar/HtcUtils;->isFacebookAccountTypeChecked:I

    .line 957
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/htc/calendar/HtcUtils;->mailExistId:J

    .line 1038
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/calendar/HtcUtils;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-void

    .line 740
    nop

    :array_0
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 750
    :array_1
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0xfat 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1286
    return-void
.end method

.method public static IsLaputaPackageExist(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    .line 586
    const/4 v1, 0x1

    .line 587
    .local v1, bIsPackageInstalled:Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 588
    .local v4, objPM:Landroid/content/pm/PackageManager;
    sget-object v0, Lcom/htc/calendar/HtcUtils;->m_strLaputaEntryActions:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v7, v0, v2

    .line 589
    .local v7, strActionName:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 590
    .local v6, objTryIntent:Landroid/content/Intent;
    const/high16 v8, 0x1

    invoke-virtual {v4, v6, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 592
    .local v5, objResolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v5, :cond_0

    .line 593
    const-string v8, "HtcUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HtcLaputaInstallerUtil::IsLaputaPackageExist(): Missing intent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v1, 0x0

    .line 588
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 599
    .end local v5           #objResolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v6           #objTryIntent:Landroid/content/Intent;
    .end local v7           #strActionName:Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public static IsMapExist(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 604
    invoke-static {p0}, Lcom/htc/calendar/HtcUtils;->IsLaputaPackageExist(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 616
    :goto_0
    return v3

    .line 607
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 608
    .local v1, objPM:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "geo:0,0"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 609
    .local v0, mapIntent:Landroid/content/Intent;
    const/high16 v4, 0x1

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 611
    .local v2, objResolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_1

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 612
    :cond_1
    const-string v3, "HtcUtils"

    const-string v4, "There is no any map related application existed or device for china"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/4 v3, 0x0

    goto :goto_0

    .line 615
    :cond_2
    const-string v4, "HtcUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "objResolveInfo is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static IsNextViewValid(Landroid/text/format/Time;FI)Z
    .locals 4
    .parameter "currentViewTime"
    .parameter "offset"
    .parameter "viewType"

    .prologue
    const/16 v3, 0x7ee

    .line 440
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 441
    .local v0, timeOfnextView:Landroid/text/format/Time;
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    .line 442
    invoke-static {p0, p1, p2}, Lcom/htc/calendar/HtcUtils;->getTimeOfNextView(Landroid/text/format/Time;FI)Landroid/text/format/Time;

    move-result-object v0

    .line 447
    :goto_0
    iget v1, v0, Landroid/text/format/Time;->year:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/text/format/Time;->year:I

    if-gt v1, v3, :cond_0

    iget v1, v0, Landroid/text/format/Time;->year:I

    if-ne v1, v3, :cond_2

    iget v1, v0, Landroid/text/format/Time;->month:I

    const/16 v2, 0xb

    if-le v1, v2, :cond_2

    .line 450
    :cond_0
    const/4 v1, 0x0

    .line 452
    :goto_1
    return v1

    .line 444
    :cond_1
    move-object v0, p0

    goto :goto_0

    .line 452
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static MirrorForARA(IIILandroid/content/Context;)I
    .locals 3
    .parameter "gap"
    .parameter "width"
    .parameter "x"
    .parameter "context"

    .prologue
    .line 777
    invoke-static {p3}, Lcom/htc/calendar/HtcUtils;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, p2

    .line 785
    .end local p2
    .local v0, x:I
    :goto_0
    return v0

    .line 780
    .end local v0           #x:I
    .restart local p2
    :cond_0
    div-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p0

    if-lt p2, v1, :cond_1

    .line 781
    div-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p0

    sub-int v1, p2, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    :goto_1
    move v0, p2

    .line 785
    .end local p2
    .restart local v0       #x:I
    goto :goto_0

    .line 783
    .end local v0           #x:I
    .restart local p2
    :cond_1
    div-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p0

    sub-int/2addr v1, p2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    goto :goto_1
.end method

.method public static StartActvity(Landroid/content/Context;Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;)V
    .locals 10
    .parameter "context"
    .parameter "event"

    .prologue
    .line 989
    iget-object v0, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->sync_account_type:Ljava/lang/String;

    iget-object v7, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->data2:Ljava/lang/String;

    invoke-static {p0, v0, v7}, Lcom/htc/calendar/HtcUtils;->isGotoEvCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->data1:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 994
    :try_start_0
    iget-object v0, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->data1:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/htc/calendar/HtcUtils;->StartFBEVCardActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    :goto_0
    return-void

    .line 996
    :catch_0
    move-exception v6

    .line 997
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "HtcUtils"

    const-string v7, "launch facebook event card error:"

    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 998
    iget-wide v7, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v7, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->end:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {p0, v0, v7, v8}, Lcom/htc/calendar/HtcUtils;->StartEventInfoctivity(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0

    .line 1002
    .end local v6           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v0, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->sync_account_type:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/htc/calendar/HtcUtils;->isTaskEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1004
    :try_start_1
    const-string v0, "HtcUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "launch TASK AP event.iCalGUID is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->iCalGUID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v0, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->iCalGUID:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/htc/calendar/HtcUtils;->StartTaskActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1006
    :catch_1
    move-exception v6

    .line 1007
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v0, "HtcUtils"

    const-string v7, "launch Event Info error:"

    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1008
    iget-wide v7, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v7, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->end:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {p0, v0, v7, v8}, Lcom/htc/calendar/HtcUtils;->StartEventInfoctivity(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0

    .line 1013
    .end local v6           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v0, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->sync_account_type:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1014
    const-string v0, "HtcUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Is HTC ExchangeEvent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->sync_account_type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    move-object v1, p0

    .line 1017
    .local v1, c:Landroid/content/Context;
    iget-wide v7, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1018
    .local v2, event_id:Ljava/lang/Long;
    iget-wide v7, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1019
    .local v4, eventbegin:Ljava/lang/Long;
    iget-wide v7, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->end:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1020
    .local v5, eventend:Ljava/lang/Long;
    iget-object v3, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->iCalGUID:Ljava/lang/String;

    .line 1022
    .local v3, iCalGUID:Ljava/lang/String;
    sget-object v0, Lcom/htc/calendar/HtcUtils;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/calendar/HtcUtils;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/calendar/HtcUtils;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1023
    :cond_2
    const-string v0, ""

    const v7, 0x7f0800ab

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v0, v7}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/htc/calendar/HtcUtils;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1025
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/htc/calendar/HtcUtils$1;

    invoke-direct/range {v0 .. v5}, Lcom/htc/calendar/HtcUtils$1;-><init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1035
    .end local v1           #c:Landroid/content/Context;
    .end local v2           #event_id:Ljava/lang/Long;
    .end local v3           #iCalGUID:Ljava/lang/String;
    .end local v4           #eventbegin:Ljava/lang/Long;
    .end local v5           #eventend:Ljava/lang/Long;
    :cond_3
    iget-wide v7, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v7, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->end:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {p0, v0, v7, v8}, Lcom/htc/calendar/HtcUtils;->StartEventInfoctivity(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    goto/16 :goto_0
.end method

.method public static StartActvity(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "eventid"
    .parameter "event_sync_account_type"
    .parameter "facebook_sourceid"
    .parameter "facebook_type"
    .parameter "event_begin"
    .parameter "event_end"
    .parameter "event_iCalGUID"

    .prologue
    .line 1058
    invoke-static {p0, p2, p4}, Lcom/htc/calendar/HtcUtils;->isGotoEvCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 1062
    :try_start_0
    invoke-static {p0, p3}, Lcom/htc/calendar/HtcUtils;->StartFBEVCardActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    :goto_0
    return-void

    .line 1064
    :catch_0
    move-exception v7

    .line 1065
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "HtcUtils"

    const-string v8, "launch facebook event card error:"

    invoke-static {v1, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1066
    move-object/from16 v0, p6

    invoke-static {p0, p1, p5, v0}, Lcom/htc/calendar/HtcUtils;->StartEventInfoctivity(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0

    .line 1070
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    invoke-static {p0, p2}, Lcom/htc/calendar/HtcUtils;->isTaskEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 1073
    :try_start_1
    const-string v1, "HtcUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "launch TASK AP event_iCalGUID is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    move-object/from16 v0, p7

    invoke-static {p0, v0}, Lcom/htc/calendar/HtcUtils;->StartTaskActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1076
    :catch_1
    move-exception v7

    .line 1077
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v1, "HtcUtils"

    const-string v8, "launch TASK AP error:"

    invoke-static {v1, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1078
    move-object/from16 v0, p6

    invoke-static {p0, p1, p5, v0}, Lcom/htc/calendar/HtcUtils;->StartEventInfoctivity(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0

    .line 1082
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {p2}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1083
    const-string v1, "cherry"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isHTCExchangeEvent event_sync_account_type :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    move-object v2, p0

    .line 1085
    .local v2, c:Landroid/content/Context;
    move-object v3, p1

    .line 1086
    .local v3, event_id:Ljava/lang/Long;
    move-object v5, p5

    .line 1087
    .local v5, eventbegin:Ljava/lang/Long;
    move-object/from16 v6, p6

    .line 1088
    .local v6, eventend:Ljava/lang/Long;
    move-object/from16 v4, p7

    .line 1089
    .local v4, iCalGUID:Ljava/lang/String;
    sget-object v1, Lcom/htc/calendar/HtcUtils;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/calendar/HtcUtils;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/calendar/HtcUtils;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1090
    :cond_2
    const-string v1, ""

    const v8, 0x7f0800ab

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v1, v8}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    sput-object v1, Lcom/htc/calendar/HtcUtils;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1092
    new-instance v8, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/calendar/HtcUtils$2;

    invoke-direct/range {v1 .. v6}, Lcom/htc/calendar/HtcUtils$2;-><init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-direct {v8, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 1098
    const-string v1, "cherry"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "blockingCheckInviteEvent run :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1104
    .end local v2           #c:Landroid/content/Context;
    .end local v3           #event_id:Ljava/lang/Long;
    .end local v4           #iCalGUID:Ljava/lang/String;
    .end local v5           #eventbegin:Ljava/lang/Long;
    .end local v6           #eventend:Ljava/lang/Long;
    :cond_3
    move-object/from16 v0, p6

    invoke-static {p0, p1, p5, v0}, Lcom/htc/calendar/HtcUtils;->StartEventInfoctivity(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    goto/16 :goto_0
.end method

.method public static StartEventInfoctivity(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 9
    .parameter "context"
    .parameter "eventId"
    .parameter "event_begin"
    .parameter "event_end"

    .prologue
    .line 1168
    invoke-static {p0}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/util/calendar/HtcCalendarManager;->generateEventUri(JJJ)Landroid/net/Uri;

    move-result-object v8

    .line 1170
    .local v8, uri:Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v7, v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1172
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1173
    return-void
.end method

.method public static StartFBEVCardActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "eventId"

    .prologue
    .line 1152
    invoke-static {p0, p1}, Lcom/htc/calendar/HtcUtils;->getFBUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1153
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1154
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1155
    return-void
.end method

.method public static StartTaskActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "intent_iCalGUID"

    .prologue
    .line 1161
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1162
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.task.ACTION_VIEW_TASK"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1163
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1165
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 53
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/calendar/HtcUtils;->blockingCheckInviteEvent(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(JJJJI)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 53
    invoke-static/range {p0 .. p8}, Lcom/htc/calendar/HtcUtils;->makeContentValues(JJJJI)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;JJJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-static/range {p0 .. p6}, Lcom/htc/calendar/HtcUtils;->dismissOneEvent(Landroid/content/Context;JJJ)V

    return-void
.end method

.method public static addToPendingList(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "sender"

    .prologue
    .line 156
    :try_start_0
    const-string v1, "HtcUtils"

    const-string v2, "Start add to PendingList"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object v2, Lcom/htc/calendar/HtcUtils;->myPendingList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :try_start_1
    sget-object v1, Lcom/htc/calendar/HtcUtils;->myPendingList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 159
    monitor-exit v2

    .line 163
    :goto_0
    return-void

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HtcUtils"

    const-string v2, "add Pending list fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static adjustStartTime(J)J
    .locals 7
    .parameter "startTime"

    .prologue
    const/16 v6, 0x1e

    const/4 v5, 0x0

    .line 82
    const-string v2, "HtcUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustStartTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 84
    .local v1, newStart:Landroid/text/format/Time;
    invoke-virtual {v1, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 87
    iput v5, v1, Landroid/text/format/Time;->second:I

    .line 88
    iget v0, v1, Landroid/text/format/Time;->minute:I

    .line 89
    .local v0, minute:I
    if-lez v0, :cond_0

    if-gt v0, v6, :cond_0

    .line 90
    iput v6, v1, Landroid/text/format/Time;->minute:I

    .line 95
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    return-wide v2

    .line 92
    :cond_0
    iput v5, v1, Landroid/text/format/Time;->minute:I

    .line 93
    iget v2, v1, Landroid/text/format/Time;->hour:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/text/format/Time;->hour:I

    goto :goto_0
.end method

.method public static analysis(Lcom/htc/calendar/CalendarContext;Landroid/net/Uri;)V
    .locals 6
    .parameter "calCxt"
    .parameter "uri"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 547
    if-nez p1, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarContext;->loadStartActivity()V

    .line 579
    :goto_0
    return-void

    .line 551
    :cond_0
    const-string v1, "HtcUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analysis uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    sget-object v1, Lcom/htc/calendar/HtcUtils;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 553
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 574
    const-string v1, "HtcUtils"

    const-string v2, "Default!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarContext;->loadStartActivity()V

    goto :goto_0

    .line 556
    :pswitch_0
    const-string v2, "HtcUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentSelectedTime (1): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/calendar/CalendarContext;->setCurrentSelectedTime(Ljava/lang/Long;)V

    .line 558
    invoke-virtual {p0, p1}, Lcom/htc/calendar/CalendarContext;->setSelectedEventUri(Landroid/net/Uri;)V

    .line 559
    invoke-virtual {p0, v4}, Lcom/htc/calendar/CalendarContext;->updateStartActivity(I)V

    goto :goto_0

    .line 563
    :pswitch_1
    const-string v2, "HtcUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentSelectedTime (2): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/calendar/CalendarContext;->setCurrentSelectedTime(Ljava/lang/Long;)V

    .line 565
    invoke-virtual {p0, v4}, Lcom/htc/calendar/CalendarContext;->updateStartActivity(I)V

    goto/16 :goto_0

    .line 569
    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/htc/calendar/CalendarContext;->setIntentFromNotes(Z)V

    .line 570
    invoke-virtual {p0, v4}, Lcom/htc/calendar/CalendarContext;->updateStartActivity(I)V

    goto/16 :goto_0

    .line 553
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static blockingCheckInviteEvent(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 6
    .parameter "context"
    .parameter "eventid"
    .parameter "event_iCalGUID"
    .parameter "event_begin"
    .parameter "event_end"

    .prologue
    const/4 v5, 0x1

    .line 1110
    const-string v2, "cherry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " event_iCalGUID is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/calendar/HtcUtils;->isInviteEvent(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v1

    .line 1113
    .local v1, isInvite:Z
    sget-object v2, Lcom/htc/calendar/HtcUtils;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/calendar/HtcUtils;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1114
    sget-object v2, Lcom/htc/calendar/HtcUtils;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1115
    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/calendar/HtcUtils;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1121
    if-eqz v1, :cond_1

    .line 1123
    :try_start_0
    const-string v2, "cherry"

    const-string v3, " EASMailUtils.launchDetail!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    sget-wide v2, Lcom/htc/calendar/HtcUtils;->mailExistId:J

    invoke-static {p0, v2, v3}, Lcom/htc/calendar/EASMailUtils;->launchDetail(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    :goto_0
    return v5

    .line 1126
    :catch_0
    move-exception v0

    .line 1127
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcUtils"

    const-string v3, "launch MAIL AP error:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1130
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {p0, p1, p3, p4}, Lcom/htc/calendar/HtcUtils;->StartEventInfoctivity(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static cancelNotification(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 189
    const-string v2, "HtcUtils"

    const-string v3, "cancelNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    if-nez p0, :cond_0

    .line 191
    const-string v2, "HtcUtils"

    const-string v3, "Context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    return-void

    .line 194
    :cond_0
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 195
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 196
    new-instance v1, Lcom/htc/wrap/android/app/HtcWrapNotification;

    invoke-direct {v1}, Lcom/htc/wrap/android/app/HtcWrapNotification;-><init>()V

    .line 197
    .local v1, notification:Lcom/htc/wrap/android/app/HtcWrapNotification;
    invoke-static {}, Lcom/htc/calendar/Utils;->isSupportJogball()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    iget v2, v1, Lcom/htc/wrap/android/app/HtcWrapNotification;->flags:I

    const/high16 v3, 0x1

    or-int/2addr v2, v3

    iput v2, v1, Lcom/htc/wrap/android/app/HtcWrapNotification;->flags:I

    .line 200
    invoke-virtual {v1}, Lcom/htc/wrap/android/app/HtcWrapNotification;->getJogMode()I

    move-result v2

    or-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/wrap/android/app/HtcWrapNotification;->setJogMode(I)V

    .line 202
    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 204
    :cond_1
    iget v2, v1, Lcom/htc/wrap/android/app/HtcWrapNotification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/htc/wrap/android/app/HtcWrapNotification;->flags:I

    .line 205
    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/wrap/android/app/HtcWrapNotification;->ledARGB:I

    goto :goto_0
.end method

.method public static checkSSO(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "accountType"

    .prologue
    .line 657
    const/4 v1, 0x0

    .line 659
    .local v1, bSSO:Z
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 660
    .local v0, authDescs:[Landroid/accounts/AuthenticatorDescription;
    array-length v3, v0

    .line 661
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 663
    aget-object v5, v0, v2

    iget-object v4, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 664
    .local v4, tt:Ljava/lang/String;
    aget-object v5, v0, v2

    iget-object v5, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 665
    const/4 v1, 0x1

    .line 669
    .end local v4           #tt:Ljava/lang/String;
    :cond_0
    return v1

    .line 661
    .restart local v4       #tt:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static clearAllPendingList(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 166
    const/4 v5, 0x0

    .line 167
    .local v5, size:I
    sget-object v7, Lcom/htc/calendar/HtcUtils;->myPendingList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v7

    .line 168
    :try_start_0
    sget-object v6, Lcom/htc/calendar/HtcUtils;->myPendingList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v5

    .line 169
    if-eqz v5, :cond_1

    .line 170
    const-string v6, "HtcUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "myPendingList is not empty : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v6, "alarm"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .local v0, alarmManager:Landroid/app/AlarmManager;
    const/4 v1, 0x0

    .line 174
    .local v1, b:Z
    :try_start_1
    sget-object v6, Lcom/htc/calendar/HtcUtils;->myPendingList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 175
    .local v4, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 176
    sget-object v6, Lcom/htc/calendar/HtcUtils;->myPendingList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 177
    if-eqz v1, :cond_0

    .line 178
    const-string v6, "HtcUtils"

    const-string v8, "==>Removed..."

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 181
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #pi:Landroid/app/PendingIntent;
    :catch_0
    move-exception v2

    .line 182
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v6, "HtcUtils"

    const-string v8, "remove Pending list fail"

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v1           #b:Z
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    monitor-exit v7

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method public static convertToJulianByDate(III)I
    .locals 7
    .parameter "year"
    .parameter "month"
    .parameter "date"

    .prologue
    .line 1543
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1544
    .local v3, strdate:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/calendar/HtcUtils;->getMillisByDate(Ljava/lang/String;)J

    move-result-wide v1

    .line 1545
    .local v1, millis:J
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 1546
    .local v4, time:Landroid/text/format/Time;
    invoke-virtual {v4, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1547
    iget-wide v5, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 1548
    .local v0, julian_day:I
    return v0
.end method

.method public static correctNewEventStartTime(ZJ)J
    .locals 17
    .parameter "correctDate"
    .parameter "needFixTime"

    .prologue
    .line 99
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 100
    .local v2, alreadyFixTime:Landroid/text/format/Time;
    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 102
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 103
    .local v16, now:Landroid/text/format/Time;
    invoke-virtual/range {v16 .. v16}, Landroid/text/format/Time;->setToNow()V

    .line 106
    move-object/from16 v0, v16

    iget v5, v0, Landroid/text/format/Time;->hour:I

    .line 107
    .local v5, hour:I
    move-object/from16 v0, v16

    iget v4, v0, Landroid/text/format/Time;->minute:I

    .line 108
    .local v4, minute:I
    move-object/from16 v0, v16

    iget v3, v0, Landroid/text/format/Time;->second:I

    .line 111
    .local v3, second:I
    move-object/from16 v0, v16

    iget v8, v0, Landroid/text/format/Time;->year:I

    .line 112
    .local v8, year:I
    move-object/from16 v0, v16

    iget v7, v0, Landroid/text/format/Time;->month:I

    .line 113
    .local v7, month:I
    move-object/from16 v0, v16

    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    .line 115
    .local v6, day:I
    if-eqz p0, :cond_0

    .line 116
    invoke-virtual/range {v2 .. v8}, Landroid/text/format/Time;->set(IIIIII)V

    .line 122
    :goto_0
    const-string v9, "HtcUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "correctNewEventStartTime: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/htc/calendar/HtcUtils;->adjustStartTime(J)J

    move-result-wide v9

    return-wide v9

    .line 118
    :cond_0
    iget v13, v2, Landroid/text/format/Time;->monthDay:I

    iget v14, v2, Landroid/text/format/Time;->month:I

    iget v15, v2, Landroid/text/format/Time;->year:I

    move-object v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-virtual/range {v9 .. v15}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_0
.end method

.method private static declared-synchronized dismissOneEvent(Landroid/content/Context;JJJ)V
    .locals 8
    .parameter "context"
    .parameter "eventId"
    .parameter "beginTime"
    .parameter "endTime"

    .prologue
    .line 1397
    const-class v5, Lcom/htc/calendar/HtcUtils;

    monitor-enter v5

    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1398
    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1399
    .local v1, mCr:Landroid/content/ContentResolver;
    const-string v4, "state"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1400
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "begin"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "end"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1402
    .local v2, selection:Ljava/lang/String;
    :try_start_1
    sget-object v4, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v3, v2, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1405
    const-string v4, "HtcUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dismissOneEvent eventId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    invoke-static {p0}, Lcom/htc/calendar/AlertService;->updateAlertNotification(Landroid/content/Context;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1412
    :goto_0
    monitor-exit v5

    return-void

    .line 1407
    :catch_0
    move-exception v0

    .line 1408
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "HtcUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dismissOneEvent eventId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    const-string v4, "HtcUtils"

    const-string v6, "Error: "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1397
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #mCr:Landroid/content/ContentResolver;
    .end local v2           #selection:Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static doDismissEvent(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "eventId"

    .prologue
    .line 1205
    move-object v0, p0

    .line 1207
    .local v0, mContext:Landroid/content/Context;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/calendar/HtcUtils$3;

    invoke-direct {v2, v0}, Lcom/htc/calendar/HtcUtils$3;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1216
    return-void
.end method

.method public static doDismissOneEvent(Landroid/content/Context;JJJ)V
    .locals 10
    .parameter "context"
    .parameter "eventId"
    .parameter "beginTime"
    .parameter "endTime"

    .prologue
    .line 1380
    move-object v1, p0

    .line 1381
    .local v1, mContext:Landroid/content/Context;
    move-wide v2, p1

    .line 1382
    .local v2, mEventId:J
    move-wide v4, p3

    .line 1383
    .local v4, mBeginTime:J
    move-wide v6, p5

    .line 1384
    .local v6, mEndTime:J
    const-string v0, "HtcUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doDismissOneEvent eventId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/htc/calendar/HtcUtils$4;

    invoke-direct/range {v0 .. v7}, Lcom/htc/calendar/HtcUtils$4;-><init>(Landroid/content/Context;JJJ)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 1394
    return-void
.end method

.method public static doSnoozeEvent(Landroid/content/Context;JJJJ)V
    .locals 11
    .parameter "context"
    .parameter "eventId"
    .parameter "alertId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 1445
    move-object v10, p0

    .line 1447
    .local v10, mContext:Landroid/content/Context;
    new-instance v0, Lcom/htc/calendar/HtcUtils$SnoozeThread;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/htc/calendar/HtcUtils$SnoozeThread;-><init>(Landroid/content/Context;JJJJ)V

    .line 1448
    .local v0, thread:Lcom/htc/calendar/HtcUtils$SnoozeThread;
    invoke-virtual {v0}, Lcom/htc/calendar/HtcUtils$SnoozeThread;->start()V

    .line 1449
    return-void
.end method

.method public static getActionString(I)Ljava/lang/String;
    .locals 1
    .parameter "action"

    .prologue
    .line 227
    packed-switch p0, :pswitch_data_0

    .line 232
    const-string v0, "Unknow"

    :goto_0
    return-object v0

    .line 228
    :pswitch_0
    const-string v0, "=UP="

    goto :goto_0

    .line 229
    :pswitch_1
    const-string v0, "=DOWN="

    goto :goto_0

    .line 230
    :pswitch_2
    const-string v0, "=MOVE="

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getAppBackground(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 371
    const-string v0, "common_app_bkg"

    const v1, 0x20806b7

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getBusyBitColor(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const v3, 0x7f070046

    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 395
    .local v0, defaultColor:I
    const-string v2, "calendar_busy_bit_color"

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 397
    .local v1, skinColorId:I
    if-nez v1, :cond_0

    .line 400
    .end local v0           #defaultColor:I
    :goto_0
    return v0

    .restart local v0       #defaultColor:I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getCalendarIndicatorToday(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 843
    const-string v0, "calendar_indicator_today"

    const v1, 0x7f02002a

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getColor(II)I
    .locals 6
    .parameter "color"
    .parameter "state"

    .prologue
    .line 245
    const/high16 v4, -0x100

    and-int v0, p0, v4

    .line 246
    .local v0, alpha:I
    const v4, 0xffffff

    and-int/2addr p0, v4

    .line 248
    const/high16 v4, 0xff

    and-int/2addr v4, p0

    add-int/2addr v4, p1

    shr-int/lit8 v3, v4, 0x10

    .line 249
    .local v3, red:I
    const v4, 0xff00

    and-int/2addr v4, p0

    add-int/2addr v4, p1

    shr-int/lit8 v2, v4, 0x8

    .line 250
    .local v2, green:I
    and-int/lit16 v4, p0, 0xff

    add-int v1, p1, v4

    .line 251
    .local v1, blue:I
    shl-int/lit8 v4, v3, 0x10

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int p0, v4, v1

    .line 252
    add-int/2addr p0, v0

    .line 254
    return p0
.end method

.method public static getCommandBarButton(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 840
    const-string v0, "command_bar_btn"

    const v1, 0x2080006

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCorrectDate(IILandroid/content/Context;)I
    .locals 2
    .parameter "date"
    .parameter "originalPos"
    .parameter "context"

    .prologue
    .line 761
    invoke-static {p2}, Lcom/htc/calendar/HtcUtils;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    sget-object v0, Lcom/htc/calendar/HtcUtils;->ARABIC_DATE:[I

    aget v0, v0, p1

    add-int/2addr p0, v0

    .line 764
    .end local p0
    :cond_0
    return p0
.end method

.method public static getCorrectMillis(J)J
    .locals 9
    .parameter "millis"

    .prologue
    const/4 v7, 0x0

    .line 1475
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 1476
    .local v3, min:Landroid/text/format/Time;
    invoke-virtual {v3, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1477
    const/16 v6, 0x7d0

    iput v6, v3, Landroid/text/format/Time;->year:I

    .line 1478
    iput v7, v3, Landroid/text/format/Time;->month:I

    .line 1479
    const/4 v6, 0x1

    iput v6, v3, Landroid/text/format/Time;->monthDay:I

    .line 1481
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1482
    .local v0, max:Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1483
    const/16 v6, 0x7ee

    iput v6, v0, Landroid/text/format/Time;->year:I

    .line 1484
    const/16 v6, 0xb

    iput v6, v0, Landroid/text/format/Time;->month:I

    .line 1485
    const/16 v6, 0x1f

    iput v6, v0, Landroid/text/format/Time;->monthDay:I

    .line 1487
    invoke-virtual {v3, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 1488
    .local v4, minMillis:J
    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    .line 1490
    .local v1, maxMillis:J
    cmp-long v6, p0, v4

    if-gez v6, :cond_1

    .line 1491
    const-string v6, "HtcUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Out of boundary - millis:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    move-wide p0, v4

    .line 1498
    :cond_0
    :goto_0
    return-wide p0

    .line 1493
    :cond_1
    cmp-long v6, p0, v1

    if-lez v6, :cond_0

    .line 1494
    const-string v6, "HtcUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Out of boundary - millis:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    move-wide p0, v1

    goto :goto_0
.end method

.method public static getCorrectPosition(ILandroid/content/Context;)I
    .locals 2
    .parameter "originalPos"
    .parameter "context"

    .prologue
    .line 753
    invoke-static {p1}, Lcom/htc/calendar/HtcUtils;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    sget-object v0, Lcom/htc/calendar/HtcUtils;->ARABIC_ORDER:[I

    aget p0, v0, p0

    .line 756
    .end local p0
    :cond_0
    return p0
.end method

.method public static getCorrectTime(Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 5
    .parameter "time"

    .prologue
    const/4 v3, 0x0

    .line 1503
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1504
    .local v1, min:Landroid/text/format/Time;
    const/16 v2, 0x7d0

    iput v2, v1, Landroid/text/format/Time;->year:I

    .line 1505
    iput v3, v1, Landroid/text/format/Time;->month:I

    .line 1506
    const/4 v2, 0x1

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 1508
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1509
    .local v0, max:Landroid/text/format/Time;
    const/16 v2, 0x7ee

    iput v2, v0, Landroid/text/format/Time;->year:I

    .line 1510
    const/16 v2, 0xb

    iput v2, v0, Landroid/text/format/Time;->month:I

    .line 1511
    const/16 v2, 0x1f

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    .line 1513
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1514
    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1516
    invoke-virtual {p0, v1}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1517
    const-string v2, "HtcUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Out of boundary - year:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/text/format/Time;->year:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " month:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " day:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    invoke-virtual {p0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1527
    :cond_0
    :goto_0
    return-object p0

    .line 1521
    :cond_1
    invoke-virtual {p0, v0}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1522
    const-string v2, "HtcUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Out of boundary - year:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/text/format/Time;->year:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " month:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " day:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    invoke-virtual {p0, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    goto :goto_0
.end method

.method public static getDateLength(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 769
    invoke-static {p0}, Lcom/htc/calendar/HtcUtils;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    const/16 v0, 0x32

    .line 772
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public static getDaybaseTodayPress(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 389
    const-string v0, "calendar_daybase_today_pressed"

    const v1, 0x7f020043

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDaybaseTodayRest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 379
    const-string v0, "calendar_daybase_today_rest"

    const v1, 0x7f020044

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDaybaseTodaySelect(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 384
    const-string v0, "calendar_daybase_today_selected"

    const v1, 0x7f020045

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getFBUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "c"
    .parameter "evId"

    .prologue
    .line 1192
    invoke-static {p0}, Lcom/htc/calendar/HtcUtils;->getFbEvcardVer(Landroid/content/Context;)I

    move-result v0

    .line 1194
    .local v0, v:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1195
    invoke-static {p1}, Lcom/htc/calendar/HtcUtils;->getFBUriVer1(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1200
    :goto_0
    return-object v1

    .line 1197
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1198
    invoke-static {p1}, Lcom/htc/calendar/HtcUtils;->getFBUriVer2(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 1200
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getFBUriVer1(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "eventid"

    .prologue
    .line 1186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "facebook_htc://detailview/event/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1187
    .local v0, uri:Landroid/net/Uri;
    return-object v0
.end method

.method private static getFBUriVer2(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "eventid"

    .prologue
    .line 1177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "social_htc://com.facebook.auth.login/event/event/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1179
    .local v0, uri:Landroid/net/Uri;
    return-object v0
.end method

.method public static getFbEvcardVer(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    const/high16 v6, 0x1

    .line 961
    sget v4, Lcom/htc/calendar/HtcUtils;->isEvCardExist:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 963
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "123"

    invoke-static {v5}, Lcom/htc/calendar/HtcUtils;->getFBUriVer1(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 964
    .local v2, inVer1:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 967
    .local v0, best1:Landroid/content/pm/ResolveInfo;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "123"

    invoke-static {v5}, Lcom/htc/calendar/HtcUtils;->getFBUriVer2(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 968
    .local v3, inVer2:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 971
    .local v1, best2:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    .line 972
    const/4 v4, 0x1

    sput v4, Lcom/htc/calendar/HtcUtils;->isEvCardExist:I

    .line 978
    .end local v0           #best1:Landroid/content/pm/ResolveInfo;
    .end local v1           #best2:Landroid/content/pm/ResolveInfo;
    .end local v2           #inVer1:Landroid/content/Intent;
    .end local v3           #inVer2:Landroid/content/Intent;
    :cond_0
    :goto_0
    sget v4, Lcom/htc/calendar/HtcUtils;->isEvCardExist:I

    return v4

    .line 973
    .restart local v0       #best1:Landroid/content/pm/ResolveInfo;
    .restart local v1       #best2:Landroid/content/pm/ResolveInfo;
    .restart local v2       #inVer1:Landroid/content/Intent;
    .restart local v3       #inVer2:Landroid/content/Intent;
    :cond_1
    if-eqz v1, :cond_2

    .line 974
    const/4 v4, 0x2

    sput v4, Lcom/htc/calendar/HtcUtils;->isEvCardExist:I

    goto :goto_0

    .line 976
    :cond_2
    const/4 v4, 0x0

    sput v4, Lcom/htc/calendar/HtcUtils;->isEvCardExist:I

    goto :goto_0
.end method

.method public static getGridAreaSelected(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const v3, 0x7f070047

    .line 855
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 856
    .local v0, defaultColor:I
    const-string v2, "app_selection_highlight"

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 858
    .local v1, skinColorId:I
    if-nez v1, :cond_0

    .line 861
    .end local v0           #defaultColor:I
    :goto_0
    return v0

    .restart local v0       #defaultColor:I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getHtc_Title_21(Landroid/app/Activity;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "activity"

    .prologue
    .line 421
    const v1, 0x7f0d00ff

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 422
    .local v0, title:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 425
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getListItemBackground(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 366
    const-string v0, "list_selector_background"

    const v1, 0x208005e

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getListViewBackground(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public static getListViewSelector(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 361
    const-string v0, "list_selector_background"

    const v1, 0x7f070051

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLocationPickerVersion(Landroid/content/Context;)Ljava/lang/Double;
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    .line 623
    sget-object v6, Lcom/htc/calendar/HtcUtils;->mLocationPickerVersion:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v6, v6, v9

    if-eqz v6, :cond_0

    sget-object v6, Lcom/htc/calendar/HtcUtils;->mLocationPickerVersion:Ljava/lang/Double;

    .line 650
    :goto_0
    return-object v6

    .line 626
    :cond_0
    const/4 v5, 0x0

    .line 627
    .local v5, version:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.htc.android.locationpicker"

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 628
    .local v4, pickerIntent:Landroid/content/Intent;
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v4, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 633
    .local v2, info:Landroid/content/pm/ResolveInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 634
    .local v3, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 635
    const-string v6, "[.]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, digits:[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v6, v0

    if-eqz v6, :cond_1

    .line 637
    array-length v6, v0

    if-ne v6, v11, :cond_2

    .line 638
    const/4 v6, 0x0

    aget-object v5, v0, v6

    .line 643
    :cond_1
    :goto_1
    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    sput-object v6, Lcom/htc/calendar/HtcUtils;->mLocationPickerVersion:Ljava/lang/Double;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    .end local v0           #digits:[Ljava/lang/String;
    .end local v3           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_2
    sget-object v6, Lcom/htc/calendar/HtcUtils;->mLocationPickerVersion:Ljava/lang/Double;

    goto :goto_0

    .line 640
    .restart local v0       #digits:[Ljava/lang/String;
    .restart local v3       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_2
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1

    .line 644
    .end local v0           #digits:[Ljava/lang/String;
    .end local v3           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 646
    .local v1, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 647
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    sput-object v6, Lcom/htc/calendar/HtcUtils;->mLocationPickerVersion:Ljava/lang/Double;

    goto :goto_2
.end method

.method public static getMillisByDate(Ljava/lang/String;)J
    .locals 6
    .parameter "date"

    .prologue
    .line 1531
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1533
    .local v0, dateformat:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 1534
    .local v1, dt:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 1537
    .end local v1           #dt:Ljava/util/Date;
    :goto_0
    return-wide v3

    .line 1535
    :catch_0
    move-exception v2

    .line 1536
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "HtcUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method public static getMonthViewTitle(Landroid/app/Activity;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "activity"

    .prologue
    .line 61
    const v1, 0x202006f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    .local v0, titleView:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static getStringAlertIdList(Landroid/content/Context;J)Ljava/lang/String;
    .locals 16
    .parameter "context"
    .parameter "eventId"

    .prologue
    .line 1220
    const-string v14, ""

    .line 1221
    .local v14, mCalendarAlertIdList:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1222
    .local v9, bEventInFired:Z
    sget-object v4, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    const-string v6, "1"

    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1223
    .local v3, alertUri:Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state=1 AND  event_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1226
    .local v5, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1227
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1228
    .local v8, alertCursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 1229
    const/4 v4, 0x0

    .line 1265
    :goto_0
    return-object v4

    .line 1231
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 1232
    .local v15, nCnt:I
    const-string v4, "HtcUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Query in fired cnt:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    if-lez v15, :cond_4

    .line 1234
    const/4 v13, -0x1

    .line 1236
    .local v13, index_calendar_alert_id:I
    :try_start_0
    const-string v4, "_id"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 1244
    :goto_1
    if-lez v13, :cond_2

    .line 1245
    const-wide/16 v10, 0x0

    .line 1247
    .local v10, calendar_alert_id:J
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1248
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    .line 1237
    .end local v10           #calendar_alert_id:J
    :catch_0
    move-exception v12

    .line 1238
    .local v12, e:Ljava/lang/Exception;
    const-string v4, "HtcUtils"

    const-string v6, "can\'t get index_calendar_alert_id"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1251
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v10       #calendar_alert_id:J
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-1"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1253
    .end local v10           #calendar_alert_id:J
    :cond_2
    const/4 v9, 0x1

    .line 1258
    .end local v13           #index_calendar_alert_id:I
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1259
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1260
    const/4 v8, 0x0

    .line 1262
    :cond_3
    const/4 v4, 0x1

    if-ne v9, v4, :cond_5

    move-object v4, v14

    .line 1263
    goto :goto_0

    .line 1255
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 1265
    :cond_5
    const-string v4, ""

    goto :goto_0
.end method

.method public static getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 721
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTextSelectionHighLight(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 405
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "text_selection_highlight"

    const v2, 0x20a001b

    invoke-static {p0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getTimeOfNextView(Landroid/text/format/Time;FI)Landroid/text/format/Time;
    .locals 5
    .parameter "currentViewTime"
    .parameter "offset"
    .parameter "viewType"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 466
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 467
    .local v0, adjustTime:Landroid/text/format/Time;
    packed-switch p2, :pswitch_data_0

    .line 479
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 480
    return-object v0

    .line 469
    :pswitch_1
    iget v3, v0, Landroid/text/format/Time;->month:I

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    :goto_1
    add-int/2addr v1, v3

    iput v1, v0, Landroid/text/format/Time;->month:I

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 472
    :pswitch_2
    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    cmpg-float v1, p1, v4

    if-gez v1, :cond_1

    const/4 v1, -0x7

    :goto_2
    add-int/2addr v1, v2

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_2

    .line 476
    :pswitch_3
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    cmpg-float v4, p1, v4

    if-gez v4, :cond_2

    :goto_3
    add-int/2addr v1, v3

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_3

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static isAllDayEventHeightNoEnought()Z
    .locals 1

    .prologue
    .line 865
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    packed-switch v0, :pswitch_data_0

    .line 869
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 867
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 865
    nop

    :pswitch_data_0
    .packed-switch 0x7e
        :pswitch_0
    .end packed-switch
.end method

.method public static isBTModuleExist(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x1

    .line 899
    sget v6, Lcom/htc/calendar/HtcUtils;->isBTModuleExist:I

    if-ne v6, v4, :cond_0

    .line 917
    :goto_0
    return v4

    .line 900
    :cond_0
    sget v6, Lcom/htc/calendar/HtcUtils;->isBTModuleExist:I

    if-ne v6, v8, :cond_1

    move v4, v5

    goto :goto_0

    .line 903
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 905
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 906
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.android.bluetooth"

    const-string v7, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 908
    const-string v6, "text/x-vcalendar"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    const/high16 v6, 0x1

    invoke-virtual {v2, v1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 911
    .local v3, ri:Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_2

    .line 912
    sput v8, Lcom/htc/calendar/HtcUtils;->isBTModuleExist:I

    move v4, v5

    .line 913
    goto :goto_0

    .line 916
    :cond_2
    sput v4, Lcom/htc/calendar/HtcUtils;->isBTModuleExist:I

    goto :goto_0
.end method

.method public static isCalendarTitleTooLong()Z
    .locals 1

    .prologue
    .line 831
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    packed-switch v0, :pswitch_data_0

    .line 836
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 834
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 831
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isDayNamestruncate(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 728
    const/4 v1, 0x0

    .line 729
    .local v1, isTruncate:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/htc/calendar/HtcUtils;->localeString:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 730
    invoke-static {p0}, Lcom/htc/calendar/HtcUtils;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/htc/calendar/HtcUtils;->localeString:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 731
    const/4 v1, 0x1

    .line 729
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 734
    :cond_1
    return v1
.end method

.method public static isGoogleEvent(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 222
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isGotoEvCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "c"
    .parameter "accountType"
    .parameter "facebookType"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 675
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v4, :sswitch_data_0

    .line 714
    :cond_0
    :goto_0
    return v5

    .line 684
    :sswitch_0
    const/4 v1, 0x0

    .line 686
    .local v1, isEVcard:Z
    if-eqz p0, :cond_0

    .line 688
    if-eqz p1, :cond_0

    .line 690
    if-eqz p2, :cond_0

    .line 693
    const/4 v2, 0x0

    .line 695
    .local v2, type:I
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 700
    if-eq v2, v6, :cond_1

    if-eq v2, v7, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 705
    :cond_1
    invoke-static {p0}, Landroid/provider/HtcExCalendar;->getHtcFacebookAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 706
    invoke-static {p0}, Lcom/htc/calendar/HtcUtils;->getFbEvcardVer(Landroid/content/Context;)I

    move-result v3

    .line 707
    .local v3, ver:I
    if-eq v3, v7, :cond_2

    if-ne v3, v6, :cond_0

    .line 708
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 696
    .end local v3           #ver:I
    :catch_0
    move-exception v0

    .line 697
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 675
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isHTCExchangeEvent(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 210
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcEasAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 214
    invoke-static {p0}, Landroid/provider/HtcExCalendar;->getHtcFacebookAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isHTCPCSyncEvent(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 218
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcPcSyncAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isInLockScreen(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1465
    if-eqz p0, :cond_0

    .line 1467
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1468
    .local v0, km:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 1471
    .end local v0           #km:Landroid/app/KeyguardManager;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isInviteEvent(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 9
    .parameter "context"
    .parameter "eventid"
    .parameter "event_iCalGUID"
    .parameter "event_begin"
    .parameter "event_end"

    .prologue
    .line 1141
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v7}, Lcom/htc/calendar/EASMailUtils;->checkMailExist(Landroid/content/Context;JLjava/lang/String;JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/htc/calendar/HtcUtils;->mailExistId:J

    .line 1143
    const-string v0, "HtcUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailExistId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/htc/calendar/HtcUtils;->mailExistId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    :goto_0
    sget-wide v0, Lcom/htc/calendar/HtcUtils;->mailExistId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1144
    :catch_0
    move-exception v8

    .line 1145
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "HtcUtils"

    const-string v1, "checkMailExist error:"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1147
    .end local v8           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isLaunchViaDispatcher()Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 922
    sget v2, Lcom/htc/calendar/HtcUtils;->isHtcLinkifyDispatcher:I

    if-ne v2, v0, :cond_1

    .line 931
    :cond_0
    :goto_0
    return v0

    .line 923
    :cond_1
    sget v2, Lcom/htc/calendar/HtcUtils;->isHtcLinkifyDispatcher:I

    if-ne v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 925
    :cond_2
    const-string v2, "ro.da1.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 926
    sput v0, Lcom/htc/calendar/HtcUtils;->isHtcLinkifyDispatcher:I

    .line 931
    :goto_1
    sget v2, Lcom/htc/calendar/HtcUtils;->isHtcLinkifyDispatcher:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 928
    :cond_3
    sput v3, Lcom/htc/calendar/HtcUtils;->isHtcLinkifyDispatcher:I

    goto :goto_1
.end method

.method public static isLaunchingEventInfo(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 540
    if-eqz p0, :cond_0

    sget-object v0, Lcom/htc/calendar/HtcUtils;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 541
    const/4 v0, 0x1

    .line 543
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMmsExist(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 874
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xd1

    if-eq v5, v6, :cond_0

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xd2

    if-eq v5, v6, :cond_0

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x51

    if-ne v5, v6, :cond_2

    :cond_0
    move v3, v4

    .line 895
    :cond_1
    :goto_0
    return v3

    .line 879
    :cond_2
    sget v5, Lcom/htc/calendar/HtcUtils;->nIsMmsExist:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 881
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 882
    .local v1, objPM:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.LAUNCH_MSG_COMPOSE"

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 883
    .local v0, mmsIntent:Landroid/content/Intent;
    const-string v5, "text/x-vcalendar"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 884
    const/high16 v5, 0x1

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 886
    .local v2, objResolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_4

    .line 887
    const-string v5, "HtcUtils"

    const-string v6, "There is no any mms related application existed"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    sput v4, Lcom/htc/calendar/HtcUtils;->nIsMmsExist:I

    .line 895
    .end local v0           #mmsIntent:Landroid/content/Intent;
    .end local v1           #objPM:Landroid/content/pm/PackageManager;
    .end local v2           #objResolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    :goto_1
    sget v5, Lcom/htc/calendar/HtcUtils;->nIsMmsExist:I

    if-eq v5, v3, :cond_1

    move v3, v4

    goto :goto_0

    .line 890
    .restart local v0       #mmsIntent:Landroid/content/Intent;
    .restart local v1       #objPM:Landroid/content/pm/PackageManager;
    .restart local v2       #objResolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_4
    const-string v5, "HtcUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "objResolveInfo is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    sput v3, Lcom/htc/calendar/HtcUtils;->nIsMmsExist:I

    goto :goto_1
.end method

.method public static isMonthViewWrong()Z
    .locals 1

    .prologue
    .line 846
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    packed-switch v0, :pswitch_data_0

    .line 851
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 849
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 846
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isNoteModuleExist(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    .line 812
    sget v5, Lcom/htc/calendar/HtcUtils;->isNoteModuleExist:I

    if-ne v5, v3, :cond_0

    .line 828
    :goto_0
    return v3

    .line 813
    :cond_0
    sget v5, Lcom/htc/calendar/HtcUtils;->isNoteModuleExist:I

    if-ne v5, v6, :cond_1

    move v3, v4

    goto :goto_0

    .line 816
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 818
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.LAUNCHNOTE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 820
    .local v0, in:Landroid/content/Intent;
    const/high16 v5, 0x1

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 822
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_2

    .line 823
    sput v6, Lcom/htc/calendar/HtcUtils;->isNoteModuleExist:I

    move v3, v4

    .line 824
    goto :goto_0

    .line 827
    :cond_2
    sput v3, Lcom/htc/calendar/HtcUtils;->isNoteModuleExist:I

    goto :goto_0
.end method

.method public static isPrinterModuleExist(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x1

    .line 484
    sget v6, Lcom/htc/calendar/HtcUtils;->isTestPrinterModuleExist:I

    if-ne v6, v4, :cond_0

    .line 502
    :goto_0
    return v4

    .line 485
    :cond_0
    sget v6, Lcom/htc/calendar/HtcUtils;->isTestPrinterModuleExist:I

    if-ne v6, v8, :cond_1

    move v4, v5

    goto :goto_0

    .line 488
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 490
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 491
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.westtek.jcp"

    const-string v7, "com.westtek.jcp.JCPRINT"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 493
    const-string v6, "content://calendar/events/1"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "text/android.provider.calendar"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const/high16 v6, 0x1

    invoke-virtual {v2, v1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 496
    .local v3, ri:Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_2

    .line 497
    sput v8, Lcom/htc/calendar/HtcUtils;->isTestPrinterModuleExist:I

    move v4, v5

    .line 498
    goto :goto_0

    .line 501
    :cond_2
    sput v4, Lcom/htc/calendar/HtcUtils;->isTestPrinterModuleExist:I

    goto :goto_0
.end method

.method public static isShowMeModuleExist(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x1

    .line 790
    sget v6, Lcom/htc/calendar/HtcUtils;->isShowMeModuleExist:I

    if-ne v6, v4, :cond_0

    .line 808
    :goto_0
    return v4

    .line 791
    :cond_0
    sget v6, Lcom/htc/calendar/HtcUtils;->isShowMeModuleExist:I

    if-ne v6, v8, :cond_1

    move v4, v5

    goto :goto_0

    .line 794
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 796
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 797
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.htc.showme"

    const-string v7, "com.htc.showme.ui.Search"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 799
    const-string v6, "android.intent.extra.SUBJECT"

    const-string v7, "calendar"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    const/high16 v6, 0x1

    invoke-virtual {v2, v1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 802
    .local v3, ri:Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_2

    .line 803
    sput v8, Lcom/htc/calendar/HtcUtils;->isShowMeModuleExist:I

    move v4, v5

    .line 804
    goto :goto_0

    .line 807
    :cond_2
    sput v4, Lcom/htc/calendar/HtcUtils;->isShowMeModuleExist:I

    goto :goto_0
.end method

.method public static isSupportSMSReminder()Z
    .locals 1

    .prologue
    .line 1452
    const/4 v0, 0x1

    return v0
.end method

.method public static isTaskEvent(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "c"
    .parameter "accountType"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 939
    const/4 v0, 0x0

    .line 940
    .local v0, isTASK:Z
    const/4 v3, -0x1

    sput v3, Lcom/htc/calendar/HtcUtils;->isTaskEventChecked:I

    .line 941
    if-nez p0, :cond_1

    .line 952
    :cond_0
    :goto_0
    return v2

    .line 943
    :cond_1
    if-eqz p1, :cond_0

    .line 946
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcTaskAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcLocalTaskAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 949
    :cond_2
    sput v1, Lcom/htc/calendar/HtcUtils;->isTaskEventChecked:I

    .line 952
    :cond_3
    sget v3, Lcom/htc/calendar/HtcUtils;->isTaskEventChecked:I

    if-ne v3, v1, :cond_4

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private static makeContentValues(JJJJI)Landroid/content/ContentValues;
    .locals 6
    .parameter "eventId"
    .parameter "begin"
    .parameter "end"
    .parameter "alarmTime"
    .parameter "minutes"

    .prologue
    const/4 v5, 0x0

    .line 1272
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1273
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "event_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1274
    const-string v3, "begin"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1275
    const-string v3, "end"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1276
    const-string v3, "alarmTime"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1278
    .local v0, currentTime:J
    const-string v3, "creationTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1279
    const-string v3, "receivedTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1280
    const-string v3, "notifyTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1281
    const-string v3, "state"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1282
    const-string v3, "minutes"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1283
    return-object v2
.end method

.method public static printColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 238
    const v0, 0xffffff

    .line 242
    .local v0, adjust:I
    return-void
.end method

.method public static removeLockscreemReminder(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "eventId"

    .prologue
    const/4 v2, 0x2

    .line 1456
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.calendar_reminder_handled"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1457
    .local v0, intentReminder:Landroid/content/Intent;
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1458
    const-string v1, "handle_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1459
    const-string v1, "handle_way"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1460
    const-string v1, "HtcUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeLockScreen Intent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1462
    return-void
.end method

.method public static setAlarmTime(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "alarmTime"

    .prologue
    .line 1436
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 1438
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1440
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-static {p0, v0, p1, p2}, Landroid/provider/CalendarContract$CalendarAlerts;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V

    .line 1442
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    :cond_0
    return-void
.end method

.method public static setHtc_AgendaView_Title_7(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "titleWording"

    .prologue
    .line 74
    const v2, 0x202006f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    .local v0, title:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v2, 0x2020070

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 78
    .local v1, title_shadow:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method public static setHtc_MonthView_Title_7(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "timeString"

    .prologue
    .line 66
    const v2, 0x202006f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    .local v0, title:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v2, 0x2020070

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    .local v1, title_shadow:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public static setHtc_Title_21(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "titleWording"

    .prologue
    .line 409
    const v1, 0x7f0d00ff

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 410
    .local v0, title:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    :cond_0
    return-void
.end method

.method public static setRemoveIconAlarmTime(Landroid/content/Context;JJJ)V
    .locals 7
    .parameter "context"
    .parameter "eventId"
    .parameter "beginTime"
    .parameter "endTime"

    .prologue
    const-wide/16 v5, 0x0

    .line 1415
    cmp-long v4, p5, v5

    if-eqz v4, :cond_0

    cmp-long v4, p1, v5

    if-ltz v4, :cond_0

    if-eqz p0, :cond_0

    .line 1416
    long-to-int v2, p1

    .line 1417
    .local v2, requestId:I
    const-string v4, "HtcUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRemoveIconAlarmTime eventId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " endTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " requestId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.intent.lockscreen.ClearCalendarReminder"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1419
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "event_id"

    invoke-virtual {v1, v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1420
    const-string v4, "calendar_action"

    const-string v5, "htc_remove_event_icon_alarm"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1421
    const-string v4, "beginTime"

    invoke-virtual {v1, v4, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1422
    const-string v4, "endTime"

    invoke-virtual {v1, v4, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1423
    const/4 v4, 0x0

    invoke-static {p0, v2, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1429
    .local v3, sender:Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1431
    .local v0, alarmManager:Landroid/app/AlarmManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, p5, p6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1434
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #requestId:I
    .end local v3           #sender:Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method public static syncFacebookCalendar(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 141
    const-string v7, "HtcUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syncFacebookCalendar "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 143
    .local v0, accountManager:Landroid/accounts/AccountManager;
    invoke-static {p0}, Landroid/provider/HtcExCalendar;->getHtcFacebookAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 145
    .local v2, acnts:[Landroid/accounts/Account;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v4, extras:Landroid/os/Bundle;
    const-string v7, "force"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    if-eqz v2, :cond_0

    .line 148
    move-object v3, v2

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v6, v3

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v3, v5

    .line 149
    .local v1, acnt:Landroid/accounts/Account;
    const-string v7, "com.android.contacts"

    invoke-static {v1, v7, v4}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 148
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 152
    .end local v1           #acnt:Landroid/accounts/Account;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_0
    return-void
.end method

.method public static syncGoogleCalendar(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 127
    const-string v7, "HtcUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syncGoogleCalendar "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 129
    .local v0, accountManager:Landroid/accounts/AccountManager;
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 131
    .local v2, acnts:[Landroid/accounts/Account;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 132
    .local v4, extras:Landroid/os/Bundle;
    const-string v7, "force"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    if-eqz v2, :cond_0

    .line 134
    move-object v3, v2

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v6, v3

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v3, v5

    .line 135
    .local v1, acnt:Landroid/accounts/Account;
    sget-object v7, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v4}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 134
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 138
    .end local v1           #acnt:Landroid/accounts/Account;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_0
    return-void
.end method
