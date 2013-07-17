.class Lcom/htc/calendar/CalendarView$2;
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
    .line 1616
    iput-object p1, p0, Lcom/htc/calendar/CalendarView$2;->this$0:Lcom/htc/calendar/CalendarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/htc/calendar/CalendarView$2;->this$0:Lcom/htc/calendar/CalendarView;

    invoke-virtual {v0}, Lcom/htc/calendar/CalendarView;->clearCachedEvents()V

    .line 1619
    return-void
.end method
