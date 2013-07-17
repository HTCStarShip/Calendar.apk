.class Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$3;
.super Ljava/lang/Object;
.source "CalendarAppWidgetService.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;

.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$i:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$3;->this$0:Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;

    iput-object p2, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$3;->val$c:Landroid/content/Context;

    iput-object p3, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$3;->val$i:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 4

    .prologue
    .line 577
    :try_start_0
    const-string v1, "CalendarWidget"

    const-string v2, "call in idleHandler"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v1, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$3;->this$0:Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;

    iget-object v2, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$3;->val$c:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$3;->val$i:Landroid/content/Intent;

    #calls: Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->doOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v1, v2, v3}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->access$500(Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CalendarWidget"

    const-string v2, "call in idleHandler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
