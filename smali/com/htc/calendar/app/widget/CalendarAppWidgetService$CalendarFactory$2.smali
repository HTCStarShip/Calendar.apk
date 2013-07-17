.class Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$2;
.super Ljava/lang/Object;
.source "CalendarAppWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;


# direct methods
.method constructor <init>(Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 149
    iget-object v2, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;

    #getter for: Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;
    invoke-static {v2}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;

    #calls: Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->createLoaderUri()Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->access$100(Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/net/Uri;

    move-result-object v1

    .line 151
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;

    #getter for: Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;
    invoke-static {v2}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 152
    iget-object v2, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;

    #getter for: Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->access$200(Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/calendar/Utils;->getHideDeclinedEvents(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "visible=1 AND selfAttendeeStatus!=2"

    .line 154
    .local v0, selection:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;

    #getter for: Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;
    invoke-static {v2}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->access$300()Ljava/lang/Integer;

    move-result-object v3

    monitor-enter v3

    .line 156
    :try_start_0
    iget-object v2, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-static {}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->access$300()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->access$302(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #setter for: Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLastLock:I
    invoke-static {v2, v4}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->access$402(Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;I)I

    .line 157
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v2, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;

    #getter for: Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;
    invoke-static {v2}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/CursorLoader;->forceLoad()V

    .line 160
    .end local v0           #selection:Ljava/lang/String;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    return-void

    .line 152
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1
    const-string v0, "visible=1 AND "

    goto :goto_0

    .line 157
    .restart local v0       #selection:Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
