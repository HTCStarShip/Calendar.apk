.class Lcom/htc/calendar/CalendarActivity$3;
.super Ljava/lang/Object;
.source "CalendarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/CalendarActivity;->eventsChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/CalendarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/htc/calendar/CalendarActivity$3;->this$0:Lcom/htc/calendar/CalendarActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 287
    :try_start_0
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity$3;->this$0:Lcom/htc/calendar/CalendarActivity;

    iget-object v2, v2, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/CalendarView;

    .line 288
    .local v1, view:Lcom/htc/calendar/CalendarView;
    invoke-virtual {v1}, Lcom/htc/calendar/CalendarView;->clearCachedEvents()V

    .line 289
    invoke-virtual {v1}, Lcom/htc/calendar/CalendarView;->reloadEvents()V

    .line 291
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity$3;->this$0:Lcom/htc/calendar/CalendarActivity;

    iget-object v2, v2, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .end local v1           #view:Lcom/htc/calendar/CalendarView;
    check-cast v1, Lcom/htc/calendar/CalendarView;

    .line 292
    .restart local v1       #view:Lcom/htc/calendar/CalendarView;
    invoke-virtual {v1}, Lcom/htc/calendar/CalendarView;->clearCachedEvents()V

    .line 293
    invoke-virtual {v1}, Lcom/htc/calendar/CalendarView;->reloadEvents()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v1           #view:Lcom/htc/calendar/CalendarView;
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CalendarActivity"

    const-string v3, "Activity finished, abort the events changed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
