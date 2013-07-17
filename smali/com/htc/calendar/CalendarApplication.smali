.class public Lcom/htc/calendar/CalendarApplication;
.super Landroid/app/Application;
.source "CalendarApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/CalendarApplication$Screen;
    }
.end annotation


# static fields
.field public static final ACTIVITY_NAMES:[Ljava/lang/String; = null

.field public static final AGENDA_VIEW_ID:I = 0x3

.field public static final DAY_EVENT_LIST_ID:I = 0x4

.field public static final DAY_VIEW_ID:I = 0x2

.field public static final DEFAULT_ID:I = -0x1

.field public static final MONTH_VIEW_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CalendarApplication"

.field public static final WEEK_VIEW_ID:I = 0x1


# instance fields
.field public currentEvent:Lcom/htc/calendar/Event;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-class v2, Lcom/htc/calendar/MonthActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/htc/calendar/WeekActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/htc/calendar/DayActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/htc/calendar/AgendaActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/CalendarApplication;->currentEvent:Lcom/htc/calendar/Event;

    .line 40
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/htc/calendar/CalendarApplication$1;

    invoke-direct {v1, p0}, Lcom/htc/calendar/CalendarApplication$1;-><init>(Lcom/htc/calendar/CalendarApplication;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/calendar/CalendarApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/calendar/CalendarContext;->init(Landroid/content/Context;)V

    .line 102
    const-string v0, "CalendarApplication"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 109
    const-string v0, "CalendarApplication"

    const-string v1, "onTerminate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method
