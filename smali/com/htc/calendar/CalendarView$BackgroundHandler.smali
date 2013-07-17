.class Lcom/htc/calendar/CalendarView$BackgroundHandler;
.super Landroid/os/Handler;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundHandler"
.end annotation


# instance fields
.field private myUpdateTZ:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "looper"
    .parameter "updateTZ"

    .prologue
    .line 5647
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/CalendarView$BackgroundHandler;->myUpdateTZ:Ljava/lang/Runnable;

    .line 5648
    iput-object p2, p0, Lcom/htc/calendar/CalendarView$BackgroundHandler;->myUpdateTZ:Ljava/lang/Runnable;

    .line 5649
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 5653
    iget v0, p1, Landroid/os/Message;->what:I

    .line 5654
    .local v0, what:I
    if-nez v0, :cond_0

    .line 5655
    iget-object v1, p0, Lcom/htc/calendar/CalendarView$BackgroundHandler;->myUpdateTZ:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 5659
    :goto_0
    return-void

    .line 5658
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
