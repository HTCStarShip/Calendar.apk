.class Lcom/htc/calendar/EditEvent$17;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/htc/calendar/EditEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 5425
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$17;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5427
    iget-object v1, p0, Lcom/htc/calendar/EditEvent$17;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mWebViewLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/calendar/EditEvent;->access$8800(Lcom/htc/calendar/EditEvent;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 5428
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/calendar/EditEvent$17;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEditableHtmlGot:Z
    invoke-static {v1}, Lcom/htc/calendar/EditEvent;->access$8700(Lcom/htc/calendar/EditEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 5430
    :try_start_1
    iget-object v1, p0, Lcom/htc/calendar/EditEvent$17;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mWebViewLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/calendar/EditEvent;->access$8800(Lcom/htc/calendar/EditEvent;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5431
    :catch_0
    move-exception v0

    .line 5432
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "EditEvent"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5435
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5436
    return-void
.end method
