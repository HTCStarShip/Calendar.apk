.class public Lcom/htc/calendar/CalendarSettingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CalendarSettingReceiver.java"


# static fields
.field public static final ACTION_FINISH_IMMEDIATE:Ljava/lang/String; = "com.htc.calendar.action.finish_immediate"

.field private static final DEBUG:Z = false

.field private static final SHARED_KEY_IS_FIRST_LAUNCH:Ljava/lang/String; = "isCleanBootFirstLaunch"

.field private static final TAG:Ljava/lang/String; = "CalendarSettingReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/CalendarSettingReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/CalendarSettingReceiver;->doOnReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private debug(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 70
    return-void
.end method

.method private doOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, action:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/calendar/CalendarSettingReceiver;->debug(Ljava/lang/String;)V

    .line 32
    const-string v2, "com.htc.calendar.ACTION_CUSTOMIZATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 34
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-static {p1, v1}, Lcom/htc/calendar/CalendarPreferenceActivity;->didHtcCustomizationDone(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    const-string v2, "do customization"

    invoke-direct {p0, v2}, Lcom/htc/calendar/CalendarSettingReceiver;->debug(Ljava/lang/String;)V

    .line 36
    invoke-static {p1}, Lcom/htc/calendar/CalendarPreferenceActivity;->checkHtcCustomization(Landroid/content/Context;)V

    .line 42
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    const-string v2, "timezone changed"

    invoke-direct {p0, v2}, Lcom/htc/calendar/CalendarSettingReceiver;->debug(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/calendar/CalendarContext;->updateCurrentSelectedTimezone()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 47
    if-nez p2, :cond_0

    .line 64
    :goto_0
    return-void

    .line 48
    :cond_0
    move-object v0, p1

    .line 49
    .local v0, c:Landroid/content/Context;
    move-object v1, p2

    .line 50
    .local v1, i:Landroid/content/Intent;
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v2

    new-instance v3, Lcom/htc/calendar/CalendarSettingReceiver$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/htc/calendar/CalendarSettingReceiver$1;-><init>(Lcom/htc/calendar/CalendarSettingReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0
.end method
