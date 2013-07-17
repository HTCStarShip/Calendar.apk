.class Lcom/htc/calendar/CalendarCarouselActivity$1;
.super Ljava/lang/Object;
.source "CalendarCarouselActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/CalendarCarouselActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarCarouselActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/CalendarCarouselActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/htc/calendar/CalendarCarouselActivity$1;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 3

    .prologue
    .line 188
    :try_start_0
    const-string v1, "CalendarTabs"

    const-string v2, "call in idleHandler"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity$1;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    invoke-virtual {v1}, Lcom/htc/calendar/CalendarCarouselActivity;->startQueryCalendars()V

    .line 190
    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity$1;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    #calls: Lcom/htc/calendar/CalendarCarouselActivity;->doingUnResponseInvitationQuery()V
    invoke-static {v1}, Lcom/htc/calendar/CalendarCarouselActivity;->access$100(Lcom/htc/calendar/CalendarCarouselActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CalendarTabs"

    const-string v2, "call in idleHandler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
