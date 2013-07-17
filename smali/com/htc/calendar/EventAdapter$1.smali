.class Lcom/htc/calendar/EventAdapter$1;
.super Ljava/lang/Object;
.source "EventAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/EventAdapter;->changeCursor(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EventAdapter;

.field final synthetic val$tmpCursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/htc/calendar/EventAdapter;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/htc/calendar/EventAdapter$1;->this$0:Lcom/htc/calendar/EventAdapter;

    iput-object p2, p0, Lcom/htc/calendar/EventAdapter$1;->val$tmpCursor:Landroid/database/Cursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 341
    iget-object v2, p0, Lcom/htc/calendar/EventAdapter$1;->this$0:Lcom/htc/calendar/EventAdapter;

    monitor-enter v2

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/htc/calendar/EventAdapter$1;->val$tmpCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/calendar/EventAdapter$1;->val$tmpCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/htc/calendar/EventAdapter$1;->val$tmpCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/calendar/EventAdapter$1;->this$0:Lcom/htc/calendar/EventAdapter;

    #getter for: Lcom/htc/calendar/EventAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;
    invoke-static {v3}, Lcom/htc/calendar/EventAdapter;->access$000(Lcom/htc/calendar/EventAdapter;)Landroid/widget/CursorAdapter$ChangeObserver;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 345
    iget-object v1, p0, Lcom/htc/calendar/EventAdapter$1;->val$tmpCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/calendar/EventAdapter$1;->this$0:Lcom/htc/calendar/EventAdapter;

    #getter for: Lcom/htc/calendar/EventAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;
    invoke-static {v3}, Lcom/htc/calendar/EventAdapter;->access$100(Lcom/htc/calendar/EventAdapter;)Landroid/database/DataSetObserver;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 346
    iget-object v1, p0, Lcom/htc/calendar/EventAdapter$1;->val$tmpCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 352
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EventAdapter"

    const-string v3, "catch excepiton"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 351
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
