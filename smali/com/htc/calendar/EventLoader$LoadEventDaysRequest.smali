.class Lcom/htc/calendar/EventLoader$LoadEventDaysRequest;
.super Ljava/lang/Object;
.source "EventLoader.java"

# interfaces
.implements Lcom/htc/calendar/EventLoader$LoadRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadEventDaysRequest"
.end annotation


# instance fields
.field public eventDays:[Z

.field public numDays:I

.field public startDay:I

.field public uiCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(II[ZLjava/lang/Runnable;)V
    .locals 0
    .parameter "startDay"
    .parameter "numDays"
    .parameter "eventDays"
    .parameter "uiCallback"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lcom/htc/calendar/EventLoader$LoadEventDaysRequest;->startDay:I

    .line 77
    iput p2, p0, Lcom/htc/calendar/EventLoader$LoadEventDaysRequest;->numDays:I

    .line 78
    iput-object p3, p0, Lcom/htc/calendar/EventLoader$LoadEventDaysRequest;->eventDays:[Z

    .line 79
    iput-object p4, p0, Lcom/htc/calendar/EventLoader$LoadEventDaysRequest;->uiCallback:Ljava/lang/Runnable;

    .line 80
    return-void
.end method


# virtual methods
.method public processRequest(Lcom/htc/calendar/EventLoader;)V
    .locals 13
    .parameter "eventLoader"

    .prologue
    const/4 v11, 0x0

    .line 84
    #getter for: Lcom/htc/calendar/EventLoader;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/htc/calendar/EventLoader;->access$000(Lcom/htc/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v5

    .line 85
    .local v5, handler:Landroid/os/Handler;
    invoke-static {}, Lcom/htc/calendar/EventLoader;->access$100()Landroid/content/ContentResolver;

    move-result-object v0

    .line 88
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v10, p0, Lcom/htc/calendar/EventLoader$LoadEventDaysRequest;->eventDays:[Z

    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 91
    iget v10, p0, Lcom/htc/calendar/EventLoader$LoadEventDaysRequest;->startDay:I

    iget v11, p0, Lcom/htc/calendar/EventLoader$LoadEventDaysRequest;->numDays:I

    sget-object v12, Lcom/htc/calendar/EventLoader;->PROJECTION:[Ljava/lang/String;

    invoke-static {v0, v10, v11, v12}, Landroid/provider/CalendarContract$EventDays;->query(Landroid/content/ContentResolver;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 93
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v10, "startDay"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 94
    .local v9, startDayColumnIndex:I
    const-string v10, "endDay"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 97
    .local v2, endDayColumnIndex:I
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 98
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 99
    .local v3, firstDay:I
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 101
    .local v7, lastDay:I
    iget v10, p0, Lcom/htc/calendar/EventLoader$LoadEventDaysRequest;->startDay:I

    sub-int v10, v3, v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 102
    .local v4, firstIndex:I
    iget v10, p0, Lcom/htc/calendar/EventLoader$LoadEventDaysRequest;->startDay:I

    sub-int v10, v7, v10

    const/16 v11, 0x1e

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 104
    .local v8, lastIndex:I
    move v6, v4

    .local v6, i:I
    :goto_0
    if-gt v6, v8, :cond_0

    .line 105
    iget-object v10, p0, Lcom/htc/calendar/EventLoader$LoadEventDaysRequest;->eventDays:[Z

    const/4 v11, 0x1

    aput-boolean v11, v10, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 109
    .end local v3           #firstDay:I
    .end local v4           #firstIndex:I
    .end local v6           #i:I
    .end local v7           #lastDay:I
    .end local v8           #lastIndex:I
    :cond_1
    if-eqz v1, :cond_2

    .line 110
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_2

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_2
    const/4 v1, 0x0

    .line 116
    iget-object v10, p0, Lcom/htc/calendar/EventLoader$LoadEventDaysRequest;->uiCallback:Ljava/lang/Runnable;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void

    .line 109
    .end local v2           #endDayColumnIndex:I
    .end local v9           #startDayColumnIndex:I
    :catchall_0
    move-exception v10

    if-eqz v1, :cond_3

    .line 110
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_3

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_3
    const/4 v1, 0x0

    throw v10
.end method

.method public skipRequest(Lcom/htc/calendar/EventLoader;)V
    .locals 0
    .parameter "eventLoader"

    .prologue
    .line 120
    return-void
.end method
