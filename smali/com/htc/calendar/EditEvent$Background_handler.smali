.class Lcom/htc/calendar/EditEvent$Background_handler;
.super Landroid/os/Handler;
.source "EditEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Background_handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/EditEvent;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 5361
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$Background_handler;->this$0:Lcom/htc/calendar/EditEvent;

    .line 5362
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5363
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    .line 5366
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 5421
    :cond_0
    :goto_0
    return-void

    .line 5368
    :sswitch_0
    const-string v3, "EditEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mEditableWebviewContentChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/calendar/EditEvent$Background_handler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEditableWebviewContentChanged:Z
    invoke-static {v5}, Lcom/htc/calendar/EditEvent;->access$8400(Lcom/htc/calendar/EditEvent;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5369
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 5370
    .local v2, origHTML:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/calendar/EditEvent$Background_handler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEditableWebviewContentChanged:Z
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$8400(Lcom/htc/calendar/EditEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5371
    iget-object v3, p0, Lcom/htc/calendar/EditEvent$Background_handler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mBackgroundHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$8500(Lcom/htc/calendar/EditEvent;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5372
    .local v1, msgGetHtml:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/calendar/EditEvent$Background_handler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mDescriptionWebView:Landroid/webkit/EditableWebView;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$8600(Lcom/htc/calendar/EditEvent;)Landroid/webkit/EditableWebView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/EditableWebView;->getHTML(Landroid/os/Message;)V

    .line 5373
    iget-object v3, p0, Lcom/htc/calendar/EditEvent$Background_handler;->this$0:Lcom/htc/calendar/EditEvent;

    const/4 v4, 0x0

    #setter for: Lcom/htc/calendar/EditEvent;->mEditableHtmlGot:Z
    invoke-static {v3, v4}, Lcom/htc/calendar/EditEvent;->access$8702(Lcom/htc/calendar/EditEvent;Z)Z

    goto :goto_0

    .line 5377
    .end local v1           #msgGetHtml:Landroid/os/Message;
    :cond_1
    iget-object v3, p0, Lcom/htc/calendar/EditEvent$Background_handler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mBackgroundHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$8500(Lcom/htc/calendar/EditEvent;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 5378
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5379
    iget-object v3, p0, Lcom/htc/calendar/EditEvent$Background_handler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mBackgroundHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$8500(Lcom/htc/calendar/EditEvent;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 5384
    .end local v2           #origHTML:Ljava/lang/String;
    :sswitch_1
    iget-object v3, p0, Lcom/htc/calendar/EditEvent$Background_handler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mWebViewLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$8800(Lcom/htc/calendar/EditEvent;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 5385
    :try_start_0
    iget-object v3, p0, Lcom/htc/calendar/EditEvent$Background_handler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEditableWebviewContentChanged:Z
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$8400(Lcom/htc/calendar/EditEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5386
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$Background_handler;->this$0:Lcom/htc/calendar/EditEvent;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #setter for: Lcom/htc/calendar/EditEvent;->mHtmlText:Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/htc/calendar/EditEvent;->access$8902(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 5388
    :cond_2
    iget-object v3, p0, Lcom/htc/calendar/EditEvent$Background_handler;->this$0:Lcom/htc/calendar/EditEvent;

    const/4 v5, 0x1

    #setter for: Lcom/htc/calendar/EditEvent;->mEditableHtmlGot:Z
    invoke-static {v3, v5}, Lcom/htc/calendar/EditEvent;->access$8702(Lcom/htc/calendar/EditEvent;Z)Z

    .line 5389
    const-string v3, "EditEvent"

    const-string v5, "MESSAGE_GET_HTML_CHANGED --> notify"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5390
    iget-object v3, p0, Lcom/htc/calendar/EditEvent$Background_handler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mWebViewLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$8800(Lcom/htc/calendar/EditEvent;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 5391
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 5396
    :sswitch_2
    iget-object v4, p0, Lcom/htc/calendar/EditEvent$Background_handler;->this$0:Lcom/htc/calendar/EditEvent;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #setter for: Lcom/htc/calendar/EditEvent;->mHtmlText:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/htc/calendar/EditEvent;->access$8902(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 5397
    const-string v3, "EditEvent"

    const-string v4, "MESSAGE_GET_HTML_RESULT----"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5398
    const-string v3, "EditEvent"

    iget-object v4, p0, Lcom/htc/calendar/EditEvent$Background_handler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mHtmlText:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/calendar/EditEvent;->access$8900(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5399
    iget-object v3, p0, Lcom/htc/calendar/EditEvent$Background_handler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mWebViewLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$8800(Lcom/htc/calendar/EditEvent;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 5400
    :try_start_1
    iget-object v3, p0, Lcom/htc/calendar/EditEvent$Background_handler;->this$0:Lcom/htc/calendar/EditEvent;

    const/4 v5, 0x1

    #setter for: Lcom/htc/calendar/EditEvent;->mEditableHtmlGot:Z
    invoke-static {v3, v5}, Lcom/htc/calendar/EditEvent;->access$8702(Lcom/htc/calendar/EditEvent;Z)Z

    .line 5401
    const-string v3, "EditEvent"

    const-string v5, "MESSAGE_GET_HTML_RESULT --> notify"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5402
    iget-object v3, p0, Lcom/htc/calendar/EditEvent$Background_handler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mWebViewLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$8800(Lcom/htc/calendar/EditEvent;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 5403
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 5409
    :sswitch_3
    :try_start_2
    iget-object v3, p0, Lcom/htc/calendar/EditEvent$Background_handler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mBackgroundThread:Landroid/os/HandlerThread;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$9000(Lcom/htc/calendar/EditEvent;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5410
    iget-object v3, p0, Lcom/htc/calendar/EditEvent$Background_handler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mBackgroundThread:Landroid/os/HandlerThread;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$9000(Lcom/htc/calendar/EditEvent;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    .line 5411
    const-string v3, "EditEvent"

    const-string v4, "[mBackgroundThread quit]"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 5413
    :catch_0
    move-exception v0

    .line 5414
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "EditEvent"

    const-string v4, "mBackgroundThread stop fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5366
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x63 -> :sswitch_3
    .end sparse-switch
.end method
