.class Lcom/htc/calendar/EditEvent$closeCalendarThread;
.super Ljava/lang/Thread;
.source "EditEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "closeCalendarThread"
.end annotation


# instance fields
.field private mCalendarsCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 4855
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4854
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/EditEvent$closeCalendarThread;->mCalendarsCursor:Landroid/database/Cursor;

    .line 4856
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$closeCalendarThread;->mCalendarsCursor:Landroid/database/Cursor;

    .line 4857
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4862
    :try_start_0
    iget-object v1, p0, Lcom/htc/calendar/EditEvent$closeCalendarThread;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 4863
    iget-object v1, p0, Lcom/htc/calendar/EditEvent$closeCalendarThread;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4864
    iget-object v1, p0, Lcom/htc/calendar/EditEvent$closeCalendarThread;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4866
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/calendar/EditEvent$closeCalendarThread;->mCalendarsCursor:Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4871
    :cond_1
    :goto_0
    return-void

    .line 4868
    :catch_0
    move-exception v0

    .line 4869
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EditEvent"

    const-string v2, "Ignoring unexpected exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
