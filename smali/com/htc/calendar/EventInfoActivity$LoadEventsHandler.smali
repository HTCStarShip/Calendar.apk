.class Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;
.super Landroid/os/Handler;
.source "EventInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadEventsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EventInfoActivity;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/EventInfoActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 2843
    iput-object p1, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    .line 2844
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2845
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 2849
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v7, :cond_3

    .line 2851
    :try_start_0
    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #calls: Lcom/htc/calendar/EventInfoActivity;->queryOnBackground()V
    invoke-static {v4}, Lcom/htc/calendar/EventInfoActivity;->access$3500(Lcom/htc/calendar/EventInfoActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2858
    :goto_0
    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mDirtyCheckOnDestory:Z
    invoke-static {v4}, Lcom/htc/calendar/EventInfoActivity;->access$3600(Lcom/htc/calendar/EventInfoActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2859
    new-instance v2, Lcom/htc/calendar/EventInfoActivity$closeCursorThread;

    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    iget-object v5, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/calendar/EventInfoActivity;->access$3700(Lcom/htc/calendar/EventInfoActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/htc/calendar/EventInfoActivity;->access$3800(Lcom/htc/calendar/EventInfoActivity;)Landroid/database/Cursor;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/htc/calendar/EventInfoActivity;->access$3900(Lcom/htc/calendar/EventInfoActivity;)Landroid/database/Cursor;

    move-result-object v7

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/htc/calendar/EventInfoActivity$closeCursorThread;-><init>(Lcom/htc/calendar/EventInfoActivity;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    .line 2861
    .local v2, myThread:Lcom/htc/calendar/EventInfoActivity$closeCursorThread;
    invoke-virtual {v2}, Lcom/htc/calendar/EventInfoActivity$closeCursorThread;->start()V

    .line 2926
    .end local v2           #myThread:Lcom/htc/calendar/EventInfoActivity$closeCursorThread;
    :cond_0
    :goto_1
    return-void

    .line 2852
    :catch_0
    move-exception v0

    .line 2853
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "EventInfoActivity"

    const-string v5, "queryOnBackground error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2864
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0, v6}, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->removeMessages(I)V

    .line 2867
    const-string v3, "onCreate"

    .line 2869
    .local v3, tag:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mBackgroundThread:Landroid/os/HandlerThread;
    invoke-static {v4}, Lcom/htc/calendar/EventInfoActivity;->access$4000(Lcom/htc/calendar/EventInfoActivity;)Landroid/os/HandlerThread;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mBackgroundThread:Landroid/os/HandlerThread;
    invoke-static {v4}, Lcom/htc/calendar/EventInfoActivity;->access$4000(Lcom/htc/calendar/EventInfoActivity;)Landroid/os/HandlerThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2870
    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mBackgroundHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/calendar/EventInfoActivity;->access$1500(Lcom/htc/calendar/EventInfoActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2871
    .local v1, myMsg:Landroid/os/Message;
    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mBackgroundHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/calendar/EventInfoActivity;->access$1500(Lcom/htc/calendar/EventInfoActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2876
    .end local v1           #myMsg:Landroid/os/Message;
    :cond_2
    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #setter for: Lcom/htc/calendar/EventInfoActivity;->mDirtyCheckAlreadyCreadted:Z
    invoke-static {v4, v7}, Lcom/htc/calendar/EventInfoActivity;->access$4102(Lcom/htc/calendar/EventInfoActivity;Z)Z

    goto :goto_1

    .line 2878
    .end local v3           #tag:Ljava/lang/String;
    :cond_3
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v6, :cond_6

    .line 2880
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 2884
    .restart local v3       #tag:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mDirtyCheckAlreadyCreadted:Z
    invoke-static {v4}, Lcom/htc/calendar/EventInfoActivity;->access$4100(Lcom/htc/calendar/EventInfoActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2887
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "onResume"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2888
    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/htc/calendar/EventInfoActivity;->access$3700(Lcom/htc/calendar/EventInfoActivity;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2889
    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/htc/calendar/EventInfoActivity;->access$3700(Lcom/htc/calendar/EventInfoActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->requery()Z

    .line 2893
    :cond_4
    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #calls: Lcom/htc/calendar/EventInfoActivity;->initEventCursor()Z
    invoke-static {v4}, Lcom/htc/calendar/EventInfoActivity;->access$4200(Lcom/htc/calendar/EventInfoActivity;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2895
    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-virtual {v4}, Lcom/htc/calendar/EventInfoActivity;->finish()V

    goto :goto_1

    .line 2898
    :cond_5
    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #calls: Lcom/htc/calendar/EventInfoActivity;->initCalendarsCursor()V
    invoke-static {v4}, Lcom/htc/calendar/EventInfoActivity;->access$4300(Lcom/htc/calendar/EventInfoActivity;)V

    .line 2900
    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/calendar/EventInfoActivity;->access$2300(Lcom/htc/calendar/EventInfoActivity;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2902
    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #calls: Lcom/htc/calendar/EventInfoActivity;->checkFiredList()V
    invoke-static {v4}, Lcom/htc/calendar/EventInfoActivity;->access$4400(Lcom/htc/calendar/EventInfoActivity;)V

    goto/16 :goto_1

    .line 2904
    .end local v3           #tag:Ljava/lang/String;
    :cond_6
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_9

    .line 2906
    :try_start_1
    const-string v4, "EventInfoActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDirtyCheckCursorClosed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mDirtyCheckCursorClosed:Z
    invoke-static {v6}, Lcom/htc/calendar/EventInfoActivity;->access$3300(Lcom/htc/calendar/EventInfoActivity;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mDirtyCheckCursorClosed:Z
    invoke-static {v4}, Lcom/htc/calendar/EventInfoActivity;->access$3300(Lcom/htc/calendar/EventInfoActivity;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2908
    new-instance v2, Lcom/htc/calendar/EventInfoActivity$closeCursorThread;

    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    iget-object v5, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/calendar/EventInfoActivity;->access$3700(Lcom/htc/calendar/EventInfoActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/htc/calendar/EventInfoActivity;->access$3800(Lcom/htc/calendar/EventInfoActivity;)Landroid/database/Cursor;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/htc/calendar/EventInfoActivity;->access$3900(Lcom/htc/calendar/EventInfoActivity;)Landroid/database/Cursor;

    move-result-object v7

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/htc/calendar/EventInfoActivity$closeCursorThread;-><init>(Lcom/htc/calendar/EventInfoActivity;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    .line 2910
    .restart local v2       #myThread:Lcom/htc/calendar/EventInfoActivity$closeCursorThread;
    invoke-virtual {v2}, Lcom/htc/calendar/EventInfoActivity$closeCursorThread;->start()V

    .line 2913
    .end local v2           #myThread:Lcom/htc/calendar/EventInfoActivity$closeCursorThread;
    :cond_7
    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mBackgroundThread:Landroid/os/HandlerThread;
    invoke-static {v4}, Lcom/htc/calendar/EventInfoActivity;->access$4000(Lcom/htc/calendar/EventInfoActivity;)Landroid/os/HandlerThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2914
    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mBackgroundThread:Landroid/os/HandlerThread;
    invoke-static {v4}, Lcom/htc/calendar/EventInfoActivity;->access$4000(Lcom/htc/calendar/EventInfoActivity;)Landroid/os/HandlerThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/HandlerThread;->quit()Z

    .line 2915
    const-string v4, "EventInfoActivity"

    const-string v5, "[mBackgroundThread quit]"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    :cond_8
    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-virtual {v4}, Lcom/htc/calendar/EventInfoActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 2918
    :catch_1
    move-exception v0

    .line 2919
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "EventInfoActivity"

    const-string v5, "mBackgroundThread stop fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2921
    .end local v0           #e:Ljava/lang/Exception;
    :cond_9
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    .line 2922
    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    iget-object v5, p0, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-virtual {v5}, Lcom/htc/calendar/EventInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    #calls: Lcom/htc/calendar/EventInfoActivity;->startQueryCalForNotesOnBackground(Landroid/content/Intent;)V
    invoke-static {v4, v5}, Lcom/htc/calendar/EventInfoActivity;->access$4500(Lcom/htc/calendar/EventInfoActivity;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2924
    :cond_a
    const-string v4, "EventInfoActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t handle message ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
