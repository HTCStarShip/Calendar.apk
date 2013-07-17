.class Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$1;
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
    .line 137
    iput-object p1, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$1;->this$0:Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$1;->this$0:Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;

    #getter for: Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;
    invoke-static {v0}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$1;->this$0:Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;

    #getter for: Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;
    invoke-static {v0}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/CursorLoader;->forceLoad()V

    .line 143
    :cond_0
    return-void
.end method
