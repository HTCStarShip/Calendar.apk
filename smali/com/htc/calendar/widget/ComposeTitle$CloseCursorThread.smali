.class Lcom/htc/calendar/widget/ComposeTitle$CloseCursorThread;
.super Ljava/lang/Thread;
.source "ComposeTitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/widget/ComposeTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseCursorThread"
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mRefComposeTitle:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/calendar/widget/ComposeTitle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/calendar/widget/ComposeTitle;Landroid/database/Cursor;)V
    .locals 1
    .parameter "compseTitle"
    .parameter "cursor"

    .prologue
    .line 1841
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1838
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$CloseCursorThread;->mRefComposeTitle:Ljava/lang/ref/WeakReference;

    .line 1842
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$CloseCursorThread;->mRefComposeTitle:Ljava/lang/ref/WeakReference;

    .line 1843
    iput-object p2, p0, Lcom/htc/calendar/widget/ComposeTitle$CloseCursorThread;->mCursor:Landroid/database/Cursor;

    .line 1844
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1848
    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle$CloseCursorThread;->mRefComposeTitle:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/widget/ComposeTitle;

    .line 1849
    .local v1, refComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;
    if-nez v1, :cond_0

    .line 1850
    const-string v2, "ComposeTitle"

    const-string v3, "refComposeTitle is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    :goto_0
    return-void

    .line 1855
    :cond_0
    const/16 v2, 0xa

    :try_start_0
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1857
    const-string v2, "ComposeTitle"

    const-string v3, "closeCursorThread START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    const-class v3, Lcom/htc/calendar/widget/ComposeTitle;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1860
    :try_start_1
    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle$CloseCursorThread;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    .line 1861
    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle$CloseCursorThread;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1862
    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle$CloseCursorThread;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1864
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle$CloseCursorThread;->mCursor:Landroid/database/Cursor;

    .line 1866
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1868
    :catch_0
    move-exception v0

    .line 1869
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ComposeTitle"

    const-string v3, "closeCursorThread error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
