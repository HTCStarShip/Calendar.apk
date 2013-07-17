.class public Lcom/htc/calendar/CalendarWakeLock;
.super Ljava/lang/Object;
.source "CalendarWakeLock.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CalendarWakeLock"

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/calendar/CalendarWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquire(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 24
    const-string v1, "acquire"

    invoke-static {v1}, Lcom/htc/calendar/CalendarWakeLock;->debug(Ljava/lang/String;)V

    .line 25
    const-string v1, "release before acquire previous, if it needs"

    invoke-static {v1}, Lcom/htc/calendar/CalendarWakeLock;->release(Ljava/lang/String;)V

    .line 27
    if-nez p0, :cond_0

    .line 28
    const-string v1, "acquire context is null"

    invoke-static {v1}, Lcom/htc/calendar/CalendarWakeLock;->debug(Ljava/lang/String;)V

    .line 31
    :cond_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 33
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "CalendarWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/htc/calendar/CalendarWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 34
    sget-object v1, Lcom/htc/calendar/CalendarWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 35
    return-void
.end method

.method private static debug(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 18
    const-string v0, "CalendarWakeLock"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const-string v0, "CalendarWakeLock"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_0
    return-void
.end method

.method public static release(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/calendar/CalendarWakeLock;->debug(Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/htc/calendar/CalendarWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/htc/calendar/CalendarWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/calendar/CalendarWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 43
    :cond_0
    return-void
.end method
