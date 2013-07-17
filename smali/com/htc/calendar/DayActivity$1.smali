.class Lcom/htc/calendar/DayActivity$1;
.super Landroid/os/Handler;
.source "DayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/DayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/DayActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/DayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/htc/calendar/DayActivity$1;->this$0:Lcom/htc/calendar/DayActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 354
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 355
    iget-object v0, p0, Lcom/htc/calendar/DayActivity$1;->this$0:Lcom/htc/calendar/DayActivity;

    #getter for: Lcom/htc/calendar/DayActivity;->mWeatherBar:Lcom/htc/calendar/widget/WeatherBar;
    invoke-static {v0}, Lcom/htc/calendar/DayActivity;->access$000(Lcom/htc/calendar/DayActivity;)Lcom/htc/calendar/widget/WeatherBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/calendar/DayActivity$1;->this$0:Lcom/htc/calendar/DayActivity;

    #getter for: Lcom/htc/calendar/DayActivity;->mWeatherBar:Lcom/htc/calendar/widget/WeatherBar;
    invoke-static {v0}, Lcom/htc/calendar/DayActivity;->access$000(Lcom/htc/calendar/DayActivity;)Lcom/htc/calendar/widget/WeatherBar;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/calendar/DayActivity$1;->this$0:Lcom/htc/calendar/DayActivity;

    iget-object v1, v1, Lcom/htc/calendar/DayActivity;->mLastQueryTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/htc/calendar/widget/WeatherBar;->drawWeather(Landroid/text/format/Time;)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/DayActivity$1;->this$0:Lcom/htc/calendar/DayActivity;

    invoke-virtual {v0}, Lcom/htc/calendar/DayActivity;->initReceiver()V

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_1
    const-string v0, "DayActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t handle message ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 364
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 365
    return-void
.end method
