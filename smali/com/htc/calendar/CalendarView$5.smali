.class Lcom/htc/calendar/CalendarView$5;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarView;


# direct methods
.method constructor <init>(Lcom/htc/calendar/CalendarView;)V
    .locals 0
    .parameter

    .prologue
    .line 5635
    iput-object p1, p0, Lcom/htc/calendar/CalendarView$5;->this$0:Lcom/htc/calendar/CalendarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5638
    iget-object v0, p0, Lcom/htc/calendar/CalendarView$5;->this$0:Lcom/htc/calendar/CalendarView;

    #calls: Lcom/htc/calendar/CalendarView;->recalc()V
    invoke-static {v0}, Lcom/htc/calendar/CalendarView;->access$1300(Lcom/htc/calendar/CalendarView;)V

    .line 5639
    iget-object v0, p0, Lcom/htc/calendar/CalendarView$5;->this$0:Lcom/htc/calendar/CalendarView;

    iget-object v1, p0, Lcom/htc/calendar/CalendarView$5;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mDateRange:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/calendar/CalendarView;->access$2400(Lcom/htc/calendar/CalendarView;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/calendar/CalendarView;->setHtcTitle(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/calendar/CalendarView;->access$2500(Lcom/htc/calendar/CalendarView;Ljava/lang/String;)V

    .line 5640
    return-void
.end method
