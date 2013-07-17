.class Lcom/htc/calendar/DayActivity$LoadEventsWeatherHandler;
.super Landroid/os/Handler;
.source "DayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/DayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadEventsWeatherHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/DayActivity;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/DayActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/htc/calendar/DayActivity$LoadEventsWeatherHandler;->this$0:Lcom/htc/calendar/DayActivity;

    .line 374
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 375
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 379
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/htc/calendar/DayActivity$LoadEventsWeatherHandler;->this$0:Lcom/htc/calendar/DayActivity;

    #getter for: Lcom/htc/calendar/DayActivity;->mBackgroundThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/htc/calendar/DayActivity;->access$100(Lcom/htc/calendar/DayActivity;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/htc/calendar/DayActivity$LoadEventsWeatherHandler;->this$0:Lcom/htc/calendar/DayActivity;

    #getter for: Lcom/htc/calendar/DayActivity;->mBackgroundThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/htc/calendar/DayActivity;->access$100(Lcom/htc/calendar/DayActivity;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 383
    iget-object v1, p0, Lcom/htc/calendar/DayActivity$LoadEventsWeatherHandler;->this$0:Lcom/htc/calendar/DayActivity;

    const/4 v2, 0x0

    #setter for: Lcom/htc/calendar/DayActivity;->mBackgroundThread:Landroid/os/HandlerThread;
    invoke-static {v1, v2}, Lcom/htc/calendar/DayActivity;->access$102(Lcom/htc/calendar/DayActivity;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 384
    iget-object v1, p0, Lcom/htc/calendar/DayActivity$LoadEventsWeatherHandler;->this$0:Lcom/htc/calendar/DayActivity;

    const/4 v2, 0x0

    #setter for: Lcom/htc/calendar/DayActivity;->mBackgroundHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/htc/calendar/DayActivity;->access$202(Lcom/htc/calendar/DayActivity;Landroid/os/Handler;)Landroid/os/Handler;

    .line 385
    const-string v1, "DayActivity"

    const-string v2, "[mBackgroundThread quit]"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DayActivity"

    const-string v2, "mBackgroundThread stop fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 390
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 392
    iget-object v1, p0, Lcom/htc/calendar/DayActivity$LoadEventsWeatherHandler;->this$0:Lcom/htc/calendar/DayActivity;

    invoke-static {v1}, Lcom/htc/calendar/Utils;->getCityCodeCount(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    :try_start_1
    iget-object v1, p0, Lcom/htc/calendar/DayActivity$LoadEventsWeatherHandler;->this$0:Lcom/htc/calendar/DayActivity;

    invoke-virtual {v1}, Lcom/htc/calendar/DayActivity;->clearLastQueryTime()V

    .line 396
    iget-object v1, p0, Lcom/htc/calendar/DayActivity$LoadEventsWeatherHandler;->this$0:Lcom/htc/calendar/DayActivity;

    invoke-virtual {v1}, Lcom/htc/calendar/DayActivity;->renewCursor()V

    .line 397
    iget-object v1, p0, Lcom/htc/calendar/DayActivity$LoadEventsWeatherHandler;->this$0:Lcom/htc/calendar/DayActivity;

    #getter for: Lcom/htc/calendar/DayActivity;->mWeatherBar:Lcom/htc/calendar/widget/WeatherBar;
    invoke-static {v1}, Lcom/htc/calendar/DayActivity;->access$000(Lcom/htc/calendar/DayActivity;)Lcom/htc/calendar/widget/WeatherBar;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/calendar/DayActivity$LoadEventsWeatherHandler;->this$0:Lcom/htc/calendar/DayActivity;

    #getter for: Lcom/htc/calendar/DayActivity;->mWeatherBar:Lcom/htc/calendar/widget/WeatherBar;
    invoke-static {v1}, Lcom/htc/calendar/DayActivity;->access$000(Lcom/htc/calendar/DayActivity;)Lcom/htc/calendar/widget/WeatherBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/calendar/widget/WeatherBar;->updateWeatherData()V

    .line 398
    :cond_2
    iget-object v1, p0, Lcom/htc/calendar/DayActivity$LoadEventsWeatherHandler;->this$0:Lcom/htc/calendar/DayActivity;

    #getter for: Lcom/htc/calendar/DayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/calendar/DayActivity;->access$300(Lcom/htc/calendar/DayActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/calendar/DayActivity$LoadEventsWeatherHandler;->this$0:Lcom/htc/calendar/DayActivity;

    #getter for: Lcom/htc/calendar/DayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/calendar/DayActivity;->access$300(Lcom/htc/calendar/DayActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 399
    :catch_1
    move-exception v0

    .line 400
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "DayActivity"

    const-string v2, "MSG_WEATHER_REQUEST_CITY_CODE_FOR_SHOW_WEATHER exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 403
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    const-string v1, "DayActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t handle message ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
