.class public Lcom/htc/calendar/SetDefaultCalendarReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SetDefaultCalendarReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/SetDefaultCalendarReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/SetDefaultCalendarReceiver;->doCalendarUpdate(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private doCalendarUpdate(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 32
    .local v6, action:Ljava/lang/String;
    const-string v0, "com.htc.calendar.ACTION_SET_DEFAULT_CALENDAR"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    .line 35
    .local v2, proj:[Ljava/lang/String;
    const-string v0, "syncAccountType"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 36
    .local v9, syncAccountType:Ljava/lang/String;
    const-string v0, "ownerAccount"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 38
    .local v8, ownerAccount:Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "account_type = \'%s\' and ownerAccount = \'%s\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v9, v5, v10

    aput-object v8, v5, v11

    invoke-static {v0, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 44
    .local v7, cs:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 53
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v7           #cs:Landroid/database/Cursor;
    .end local v8           #ownerAccount:Ljava/lang/String;
    .end local v9           #syncAccountType:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 47
    .restart local v2       #proj:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v7       #cs:Landroid/database/Cursor;
    .restart local v8       #ownerAccount:Ljava/lang/String;
    .restart local v9       #syncAccountType:Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    invoke-static {p1, v8, v9}, Lcom/htc/calendar/Utils;->updateDefaultInsertCalendar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 15
    move-object v0, p1

    .line 16
    .local v0, c:Landroid/content/Context;
    move-object v1, p2

    .line 17
    .local v1, i:Landroid/content/Intent;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/calendar/SetDefaultCalendarReceiver$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/htc/calendar/SetDefaultCalendarReceiver$1;-><init>(Lcom/htc/calendar/SetDefaultCalendarReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 26
    return-void
.end method
